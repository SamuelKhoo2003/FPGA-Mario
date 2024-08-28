#include <WiFi.h>
#include <WiFiAP.h>
#include <WebSocketsServer.h>
#include <WiFiClient.h>
#include <ArduinoJson.h>
#include "helper_funcs.h"
#include "esp_wpa2.h"  // wpa2 library for connections to enterprise networks
#include "wifi_credentials.h"
 
const char* WIFI_SSID = "Imperial-WPA";

// JSON setup stuff
const int buffer_size = 4096;
char json_buffer[buffer_size];
int buffer_index = 0;

const int webSocketPort = 8990;

WebSocketsServer webSocket = WebSocketsServer(webSocketPort);
unsigned long last_message_time = 0; // Variable to store the time of the last received message
unsigned long throttling_time = 900; // ms

void parseJSON(uint8_t* payload, size_t length){
  unsigned long current_time = millis();

  if((current_time - last_message_time) >= throttling_time){
    // Parse JSON message received from the client
    DynamicJsonDocument doc(buffer_size);
    deserializeJson(doc, payload, length);
    
    int x = doc["x"];
    int y = doc["y"];

    // Do something with the received coordinates
    Serial.printf("Received x: %d, y: %d\n", x, y);
    control_motors(x, y);

    last_message_time = current_time;
  } else {
    Serial.printf("Wait for a bit ");
  }
}

void webSocketEvent(uint8_t num, WStype_t type, uint8_t *payload, size_t length) {
  switch (type) {
    case WStype_TEXT: {
      String command = String((char*)payload);

      parseJSON(payload, length);
      
      break;
    }
    default:
      break;
  }
}

void setup() {
  Serial.begin(115200);
  delay(100);

  // Connect to WiFi
  WiFi.disconnect(true);
  WiFi.mode(WIFI_STA);
  WiFi.begin(WIFI_SSID, WPA2_AUTH_PEAP, EAP_IDENTITY, EAP_USERNAME, EAP_PASSWORD);
  
  Serial.printf("Connecting to wifi...");
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println(" connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());

  init_motors();

  // Start WebSocket server
  webSocket.begin();
  webSocket.onEvent(webSocketEvent);
}

void loop() {
  webSocket.loop();
}