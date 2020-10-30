#include <Arduino.h>
#include <RTClib.h>

// TIME INTERVAL SETTINGS

// TODO: these are the test numbers, update once in production
#define MIN_TRANSITION_S 2
#define MAX_TRANSITION_S 10
#define DAY_LENGTH_S 60 * 60 * 24

// PINS

#define PIN_ALARM_INT 2
#define PIN_RESET_BTN 3
#define PIN_ERROR_LED 4
#define PIN_MOSFET 11
#define PIN_SDA A4
#define PIN_SCL A5
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

    // If it does not have any time, just use the one
    // from this source code. It does not really have to match
    // the real clock, it's used relatively.
    if (rtc.lostPower()) {
        rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
    }

    // disable both alarms
    rtc.disableAlarm(1);
    rtc.disableAlarm(2);

    // disable oscillating signals
    rtc.writeSqwPinMode(DS3231_OFF);
    rtc.disable32K();
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
    delay(3000);
    error();
}

