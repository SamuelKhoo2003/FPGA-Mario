#include <WiFi.h>
#include <WebServer.h>
#include "wifi_credentials.h"

#define PWM_FREQ 5000
#define PWM_CHANNEL_A 0
#define PWM_CHANNEL_B 1
#define PWM_CHANNEL_C 2
#define PWM_CHANNEL_D 3
#define PWM_RESOLUTION 8

// Create an instance of the WebServer class
WebServer server(80);

// Pins for controlling motors
#define IN1_A 27
#define IN2_A 14
#define ENA_A 32
#define IN3_A 25
#define IN4_A 26
#define ENB_A 33

#define IN1_B 4
#define IN2_B 16
#define ENA_B 17
#define IN3_B 5
#define IN4_B 18
#define ENB_B 19

void runPWM(){
    for (int dutyCycle = 0; dutyCycle <= 255; dutyCycle++)
      {
          ledcWrite(PWM_CHANNEL_A, dutyCycle);
          ledcWrite(PWM_CHANNEL_B, dutyCycle);
          ledcWrite(PWM_CHANNEL_C, dutyCycle);
          ledcWrite(PWM_CHANNEL_D, dutyCycle);
          delay(15);
      }
}

void setup() {
  Serial.begin(115200);

  // Initialize motor control pins
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

  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.println("Connecting to WiFi...");
  }
  Serial.println("Connected to WiFi");
  Serial.println(WiFi.localIP());

  // Start the server and handle HTTP requests
  server.on("/", HTTP_GET, []() {
    server.send(200, "text/html", 
      "<html><body>"
      "<h1>ESP32 RC Car Control</h1>"
      "<form action='/forward'><button>Forward</button></form>"
      "<form action='/backward'><button>Backward</button></form>"
      "<form action='/left'><button>Left</button></form>"
      "<form action='/right'><button>Right</button></form>"
      "<form action='/stop'><button>STOP</button></form>"
      "</body></html>");
  });

  server.on("/forward", HTTP_GET, []() {
    // All motors forward
    digitalWrite(IN1_A, HIGH);
    digitalWrite(IN2_A, HIGH);
    digitalWrite(IN3_A, HIGH);
    digitalWrite(IN4_A, HIGH);
    digitalWrite(IN1_B, HIGH);
    digitalWrite(IN2_B, HIGH);
    digitalWrite(IN3_B, HIGH);
    digitalWrite(IN4_B, HIGH);

    runPWM();
    server.send(200, "text/plain", "Moving forward");
  });

  server.on("/backward", HTTP_GET, []() {
    server.send(200, "text/plain", "Moving backward");
  });

  server.on("/left", HTTP_GET, []() {
    server.send(200, "text/plain", "Turning left");
  });

  server.on("/right", HTTP_GET, []() {
    server.send(200, "text/plain", "Turning right");
  });

  
  server.on("/stop", HTTP_GET, []() {
    server.send(200, "text/plain", "stopping");
    digitalWrite(IN1_A, LOW);
    digitalWrite(IN2_A, LOW);
    digitalWrite(IN3_A, LOW);
    digitalWrite(IN4_A, LOW);
    digitalWrite(IN1_B, LOW);
    digitalWrite(IN2_B, LOW);
    digitalWrite(IN3_B, LOW);
    digitalWrite(IN4_B, LOW);

    runPWM();
  });

  server.begin();
}

void loop() {
  server.handleClient();
}
