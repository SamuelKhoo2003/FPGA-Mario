#include <Arduino.h>

#define LED_PIN 2

#define PWM_FREQ 5000
#define PWM_CHANNEL 0
#define PWM_RESOLUTION 8

void setup()
{
    pinMode(LED_PIN, OUTPUT);

    // configure LEDC
    ledcSetup(PWM_CHANNEL, PWM_FREQ, PWM_RESOLUTION);
    ledcAttachPin(LED_PIN, PWM_CHANNEL);
}

void loop()
{
    // increase brightness
    for (int dutyCycle = 0; dutyCycle <= 255; dutyCycle++)
    {
        ledcWrite(PWM_CHANNEL, dutyCycle);
        delay(15);
    }

    // decrease brightness
    for (int dutyCycle = 255; dutyCycle >= 0; dutyCycle--)
    {
        ledcWrite(PWM_CHANNEL, dutyCycle);
        delay(15);
    }
}