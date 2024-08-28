#include <Arduino.h>

#include "esp32_cam_pins.h"

#define PWM_FREQ 5000
#define PWM_CHANNEL_A 0
#define PWM_CHANNEL_B 1
#define PWM_CHANNEL_C 2
#define PWM_CHANNEL_D 3
#define PWM_RESOLUTION 8

void setup()
{
    Serial.begin(115200);
    pinMode(IN1_A, OUTPUT);
    pinMode(IN2_A, OUTPUT);
    pinMode(ENA_A, OUTPUT);
    pinMode(IN3_A, OUTPUT);
    pinMode(IN4_A, OUTPUT);
    pinMode(ENB_A, OUTPUT);

    pinMode(IN1_B, OUTPUT);
    pinMode(IN2_B, OUTPUT);
    pinMode(ENA_B, OUTPUT);
    pinMode(IN3_B, OUTPUT);
    pinMode(IN4_B, OUTPUT);
    pinMode(ENB_B, OUTPUT);

    // configure LEDC
    ledcSetup(PWM_CHANNEL_A, PWM_FREQ, PWM_RESOLUTION);
    ledcAttachPin(ENA_A, PWM_CHANNEL_A);
    ledcSetup(PWM_CHANNEL_B, PWM_FREQ, PWM_RESOLUTION);
    ledcAttachPin(ENB_A, PWM_CHANNEL_B);
    ledcSetup(PWM_CHANNEL_C, PWM_FREQ, PWM_RESOLUTION);
    ledcAttachPin(ENA_B, PWM_CHANNEL_C);
    ledcSetup(PWM_CHANNEL_D, PWM_FREQ, PWM_RESOLUTION);
    ledcAttachPin(ENB_B, PWM_CHANNEL_D);
}

void loop()
{
    digitalWrite(IN1_A, LOW);
    digitalWrite(IN2_A, LOW);
    digitalWrite(IN3_A, LOW);
    digitalWrite(IN4_A, LOW);
    delay(100);  // add a small delay here
    digitalWrite(IN1_B, LOW);
    digitalWrite(IN2_B, LOW);
    digitalWrite(IN3_B, LOW);
    digitalWrite(IN4_B, LOW);
    delay(1000);

    // Motor A forward, Motor B backward
    digitalWrite(IN1_A, HIGH);
    digitalWrite(IN2_A, LOW);
    digitalWrite(IN3_A, LOW);
    digitalWrite(IN4_A, HIGH);
    digitalWrite(IN1_B, HIGH);
    digitalWrite(IN2_B, LOW);
    digitalWrite(IN3_B, LOW);
    digitalWrite(IN4_B, HIGH);
    for (int dutyCycle = 0; dutyCycle <= 255; dutyCycle++)
    {
        ledcWrite(PWM_CHANNEL_A, dutyCycle);
        ledcWrite(PWM_CHANNEL_B, dutyCycle);
        ledcWrite(PWM_CHANNEL_C, dutyCycle);
        ledcWrite(PWM_CHANNEL_D, dutyCycle);
        delay(15);
    }

    // stop
    digitalWrite(IN1_A, LOW);
    digitalWrite(IN2_A, LOW);
    digitalWrite(IN3_A, LOW);
    digitalWrite(IN4_A, LOW);
    digitalWrite(IN1_B, LOW);
    digitalWrite(IN2_B, LOW);
    digitalWrite(IN3_B, LOW);
    digitalWrite(IN4_B, LOW);
    delay(1000);

    // Motor A backward, Motor B forward
    digitalWrite(IN1_A, LOW);
    digitalWrite(IN2_A, HIGH);
    digitalWrite(IN3_A, HIGH);
    digitalWrite(IN4_A, LOW);
    digitalWrite(IN1_B, LOW);
    digitalWrite(IN2_B, HIGH);
    digitalWrite(IN3_B, HIGH);
    digitalWrite(IN4_B, LOW);
    for (int dutyCycle = 255; dutyCycle >= 0; dutyCycle--)
    {
        ledcWrite(PWM_CHANNEL_A, dutyCycle);
        ledcWrite(PWM_CHANNEL_B, dutyCycle);
        ledcWrite(PWM_CHANNEL_C, dutyCycle);
        ledcWrite(PWM_CHANNEL_D, dutyCycle);
        delay(15);
    }

    // stop
    digitalWrite(IN1_A, LOW);
    digitalWrite(IN2_A, LOW);
    digitalWrite(IN3_A, LOW);
    digitalWrite(IN4_A, LOW);
    delay(100);  // add a small delay here
    digitalWrite(IN1_B, LOW);
    digitalWrite(IN2_B, LOW);
    digitalWrite(IN3_B, LOW);
    digitalWrite(IN4_B, LOW);
    delay(1000);
}