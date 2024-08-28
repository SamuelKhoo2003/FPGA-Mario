#include <WiFi.h>
#include <WiFiAP.h>

#include <WiFiClient.h>
#include <ArduinoJson.h>
#include "motors.h"
#include "wifi_credentials.h"
#include "esp_wpa2.h"  // wpa2 library for connections to enterprise networks

const char* WIFI_SSID = "Imperial-WPA";

// JSON setup stuff
const int buffer_size = 512;
char json_buffer[buffer_size];
int buffer_index = 0;

const int port = 8990;

WiFiServer server(port);

// Rest of code
void setup(){
  init_motors();

  // connect to WiFi
  Serial.begin(115200);
   WiFi.disconnect(true);
  WiFi.mode(WIFI_STA);
  WiFi.begin(WIFI_SSID, WPA2_AUTH_PEAP, EAP_IDENTITY, EAP_USERNAME, EAP_PASSWORD);
  
  while(WiFi.status() != WL_CONNECTED){
    Serial.println("Connecting to WiFi....");
    delay(1000);
  }

  Serial.println("Connected to WiFi with IP: "); 
  Serial.println(WiFi.localIP());

  // Start TCP/IP server
  server.begin();
  Serial.println("Started TCP/IP server");
}

void loop(){
  WiFiClient client = server.available();

  // if a client has connected to the TCP/IP server, read PWM data and use it
  if(client){
    Serial.println("Client connected");
    while(client.connected()){
      if(client.available()){
        char c = client.read();
        
        if((buffer_index != buffer_size-1) && (c != '\n')){
          json_buffer[buffer_index++] = c;  
        } else {
          // parse the JSON object
          json_buffer[buffer_index] = '\0';
          StaticJsonDocument<buffer_size> doc;  
          DeserializationError error = deserializeJson(doc, json_buffer);

          if(error){
            Serial.println("JSON parsing unsuccessful");
            Serial.println(error.c_str());  
          } else {
            // get PWM data
            int x = doc["x"], y = doc["y"];
            Serial.print("X: ");
            Serial.println(x);
            Serial.print("Y: ");
            Serial.println(y);
          
            control_motors(x, y);  
          }

          // reset JSON buffer for next data 
          buffer_index = 0;
        }
      } 
    }

    client.stop();
    Serial.println("Client disconnected");
  }
 
}