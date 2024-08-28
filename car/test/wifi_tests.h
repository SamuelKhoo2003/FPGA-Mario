#include <Arduino.h>
#include <WiFi.h>

#include "esp32_cam_pins.h"
#include "wifi_credentials.h"

WiFiServer server(80);

void setup()
{
    Serial.begin(115200);
    pinMode(LED_BUILTIN,
            OUTPUT);  // Initialize the LED_BUILTIN pin as an output

    // Connect to WiFi network
    Serial.println();
    Serial.println("Connecting to WiFi...");
    WiFi.begin(ssid, password);

    while (WiFi.status() != WL_CONNECTED)
    {
        delay(500);
        Serial.print(".");
    }
    Serial.println("WiFi connected");

    // Start the server
    server.begin();
    Serial.println("Server started");

    // Print the IP address
    Serial.println(WiFi.localIP());
}

void loop()
{
    // Check if a client has connected
    WiFiClient client = server.available();
    if (!client)
    {
        return;
    }

    // Wait until the client sends some data
    Serial.println("new client");
    while (!client.available())
    {
        delay(1);
    }

    // Read the first line of the request
    String request = client.readStringUntil('\r');
    Serial.println(request);
    client.flush();

    // Match the request
    int value = LOW;
    if (request.indexOf("/LED=ON") != -1)
    {
        digitalWrite(LED_BUILTIN, HIGH);  // LED ON
        value = HIGH;
    }
    if (request.indexOf("/LED=OFF") != -1)
    {
        digitalWrite(LED_BUILTIN, LOW);  // LED OFF
        value = LOW;
    }

    // Return the response
    client.println("HTTP/1.1 200 OK");
    client.println("Content-type:text/html");
    client.println();
    client.print("LED is now: ");
    if (value == HIGH)
    {
        client.print("On");
    }
    else
    {
        client.print("Off");
    }
    client.println("<br><br>");
    client.println("<a href=\"/LED=ON\">Turn On LED</a><br>");
    client.println("<a href=\"/LED=OFF\">Turn Off LED</a>");
    client.println();
    delay(1);
    Serial.println("Client disconnected");
    Serial.println("");
}
