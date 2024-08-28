#include <ArduinoJson.h>
#include <WiFiAP.h>
#include <AsyncTCP.h>
#include <WiFiClient.h>
#include "motors.h"

// JSON setup stuff
const int buffer_size = 512;
char json_buffer[buffer_size];
int buffer_index = 0;

// WIFI init stuff  
const int port = 8990;

WiFiServer tcpserver(port);

WiFiClient tcpClient;
bool isClientConnected = false;

void tcp_setup(){
  init_motors();
  
  // Start TCP/IP server
  tcpserver.begin();
  Serial.println("Started TCP/IP server"); 
}

void tcp_loop(){
  if (!isClientConnected && tcpserver.hasClient()) {
    tcpClient = tcpserver.available();
    if (tcpClient.connected()) {
      Serial.println("Client connected");
      isClientConnected = true;
    }
  }

  if(tcpClient.available() && isClientConnected){
    char c = tcpClient.read();

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

  if (isClientConnected && !tcpClient.connected()) {
    Serial.println("Client disconnected");
    isClientConnected = false;
    tcpClient.stop();
  }
}