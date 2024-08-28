// pwm stuff
#define PWM_FREQ 5000
#define PWM_CHANNEL_R 0
#define PWM_CHANNEL_L 1
#define PWM_RESOLUTION 8

// motor control pins
#include "esp32_cam_pins.h"

void init_motors() {
  // right side
  pinMode(ENA, OUTPUT);
  pinMode(IN1, OUTPUT);
  pinMode(IN2, OUTPUT);

  // left side
  pinMode(ENB, OUTPUT);
  pinMode(IN3, OUTPUT);
  pinMode(IN4, OUTPUT);

  // configure the PWM channels
  ledcSetup(PWM_CHANNEL_R, PWM_FREQ, PWM_RESOLUTION);
  ledcSetup(PWM_CHANNEL_L, PWM_FREQ, PWM_RESOLUTION);
  ledcAttachPin(ENA, PWM_CHANNEL_R);
  ledcAttachPin(ENB, PWM_CHANNEL_L);
}

// function to control the motors based on x and y coordinates
void control_motors(int x, int y) {
  // calculate the speed and direction for the right and left motors
  int speed_r = y + x;
  int speed_l = y - x;

  // limit the speed values to the range -255 to 255
  speed_r = constrain(speed_r, -255, 255);
  speed_l = constrain(speed_l, -255, 255);

  // set the pwm duty cycle for the right and left motors
  ledcWrite(PWM_CHANNEL_R, abs(speed_r));
  ledcWrite(PWM_CHANNEL_L, abs(speed_l));

  // set the direction of the right motor based on the sign of the speed value
  if (speed_r >= 0) {
    digitalWrite(IN1, HIGH);
    digitalWrite(IN2, LOW);
  } else {
    digitalWrite(IN1, LOW);
    digitalWrite(IN2, HIGH);
  }

  // set the direction of the left motor based on the sign of the speed value
  if (speed_l >= 0) {
    digitalWrite(IN3, HIGH);
    digitalWrite(IN4, LOW);
  } else {
    digitalWrite(IN3, LOW);
    digitalWrite(IN4, HIGH);
  }
}
