#include <Arduino.h>
#include <RTClib.h>

// TIME INTERVAL SETTINGS

// TODO: these are the test numbers, update once in production
#define MIN_TRANSITION_S 1
#define MAX_TRANSITION_S 2
#define DAY_LENGTH_S 7
#define FULL_LIGHT_LENGTH_S 2

// PINS

#define PIN_ALARM_INT 2
#define PIN_RESET_BTN 3
#define PIN_ERROR_LED 4
#define PIN_MOSFET 11
#define PIN_GRAD_POT A2

// TIME

RTC_DS3231 rtc;
DateTime scheduleStart;

// HELPERS

// enable the error LED and abort the program
void error() {
    digitalWrite(PIN_ERROR_LED, HIGH);
    abort();
}

// reset arduino from software
// https://arduinogetstarted.com/faq/how-to-reset-arduino-by-programming
void(* reboot) (void) = 0;

// FUNCTIONS

// set up pin modes and reset their state
void setupPins() {
    pinMode(PIN_ALARM_INT, INPUT);
    pinMode(PIN_RESET_BTN, INPUT);
    pinMode(PIN_ERROR_LED, OUTPUT);
    pinMode(PIN_MOSFET,    OUTPUT);

    digitalWrite(PIN_ERROR_LED, LOW);
    digitalWrite(PIN_MOSFET,    LOW);
}

void setupRtc() {
    // initialize DS3231
    if (!rtc.begin()) {
        error();
    }

    // It does not really have to match
    // the real clock, it's used relatively.
    rtc.adjust(DateTime(2020, 10, 31));

    // disable oscillating signals
    rtc.writeSqwPinMode(DS3231_OFF);
    rtc.disable32K();

    // disable both alarms
    rtc.clearAlarm(1);
    rtc.clearAlarm(2);
    rtc.disableAlarm(1);
    rtc.disableAlarm(2);
}

// returns the length of the transition from no light
// to full light (in seconds), taking into account
// the position of the potentiometer
long getTransitionLength() {
    auto potentiometer = analogRead(PIN_GRAD_POT); // 0-1024
    auto transition = map(potentiometer, 0, 1024, MIN_TRANSITION_S, MAX_TRANSITION_S);
    return transition;
}

// computes the current time in the schedule and
// make sure that the schedule is repeated
long getTimeInSchedule() {
    auto timeSinceScheduleStart = rtc.now() - scheduleStart;
    auto timeSinceScheduleStartSeconds = timeSinceScheduleStart.totalseconds();

    auto timeInSchedule = timeSinceScheduleStartSeconds % DAY_LENGTH_S;
    return timeInSchedule;
}

void setLightPercentage(float percent) {
    auto writeValue = int(percent * 256.f);
    analogWrite(PIN_MOSFET, constrain(writeValue, 0, 256));
}

// SETUP

void setup() {
    setupPins();
    setupRtc();

    // save the starting time of the schedule
    scheduleStart = rtc.now();
}

// LOOP

void loop() {
    auto transitionLength = getTransitionLength();
    auto timeInSchedule = getTimeInSchedule();

    // safety check to ensure I did not mess the numbers
    if (transitionLength * 2 + FULL_LIGHT_LENGTH_S >= DAY_LENGTH_S) {
        error();
    }

    if (timeInSchedule < transitionLength) {
        // we are transitioning from no light to full light
        setLightPercentage(float(timeInSchedule) / transitionLength);
    } else if (timeInSchedule < transitionLength + FULL_LIGHT_LENGTH_S) {
        // we are in full light
        setLightPercentage(1.f);
    } else if (timeInSchedule < transitionLength * 2 + FULL_LIGHT_LENGTH_S) {
        // we are transitioning from full light to no light
        auto timeInTransition = timeInSchedule - FULL_LIGHT_LENGTH_S - transitionLength;
        setLightPercentage(float(transitionLength - timeInTransition) / transitionLength);
    } else {
        // we are in no light
        setLightPercentage(0.f);
    }

    // TODO
    delay(100);
}

