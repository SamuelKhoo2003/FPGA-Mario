#include "webserver_setup.h"
#include "tcpserver_setup.h"
#include "wifi_credentials.h"

TaskHandle_t WebSocketHandle;
TaskHandle_t TCPHandle;

SemaphoreHandle_t mutex;

#define TASK1_STACK_SIZE 4096
#define TASK2_STACK_SIZE 4096

void setup() {
  Serial.begin(115200);  

  // connect to wifi
  WiFi.persistent(false);
  WiFi.mode(WIFI_STA);
  //WiFi.begin(WIFI_SSID, WIFI_PASS);  
  WiFi.begin(WIFI_SSID, WPA2_AUTH_PEAP, EAP_IDENTITY, EAP_USERNAME, EAP_PASSWORD);
  
  while (WiFi.status() != WL_CONNECTED) {
    Serial.println("Connecting to WiFi");
    delay(500);
  }

  mutex = xSemaphoreCreateMutex();

  xTaskCreate(
    WebSocketcode,   
    "WebSocket",     
    TASK1_STACK_SIZE,       
    NULL,        
    1,           
    &WebSocketHandle); 

  xTaskCreate(
    TCPcode,   
    "TCP",    
    TASK2_STACK_SIZE,     
    NULL,       
    1,          
    &TCPHandle); 
}

void WebSocketcode( void * pvParameters ){
  Serial.print("Websocket running on core ");
  Serial.println(xPortGetCoreID());

  xSemaphoreTake(mutex, portMAX_DELAY);
  ws_setup();
  xSemaphoreGive(mutex);

  while(true){
    if(xSemaphoreTake(mutex, portMAX_DELAY)){
      server.handleClient();
      xSemaphoreGive(mutex);
    }
  } 
}

void TCPcode( void * pvParameters ){
  Serial.print("TCP server running on core ");
  Serial.println(xPortGetCoreID());

  xSemaphoreTake(mutex, portMAX_DELAY);
  tcp_setup();
  xSemaphoreGive(mutex);
    
  while(true){
    if(xSemaphoreTake(mutex, portMAX_DELAY)){
      tcp_loop();
      xSemaphoreGive(mutex); 
    }
  }
}

void loop() {
  
}