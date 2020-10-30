#include <Arduino.h>

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


// SETUP

void setup() {
    setupPins();
}

// LOOP

void loop() {}

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

// enable the error LED and abort the program
void error() {
    digitalWrite(PIN_ERROR_LED, HIGH);
    abort();
}

// reset arduino from software
// https://arduinogetstarted.com/faq/how-to-reset-arduino-by-programming
void(* reboot) (void) = 0;

