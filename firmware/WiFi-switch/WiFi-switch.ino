#include <ESP8266WiFi.h>
#include <PubSubClient.h>
#include <OneWire.h>
#include <DallasTemperature.h>


#define TEMP_UPDATE_INTERVAL 5000
#define STATE_UPDATE_INTERVAL 5000
#define WIFI_SSID "<network id>"
#define WIFI_PASSWORD "<password>"
#define MQTT_SERVER "<server ip address>"
#define MQTT_PORT 1883
#define MQTT_USERNAME "<username>"
#define MQTT_PASSWORD "<password>"
#define MQTT_CLIENT_ID "WiFi Switch 1"
#define SENSOR_TOPIC "home/switch/1/temp"
#define STATE_TOPIC "home/switch/1/state"
#define SET_TOPIC "home/switch/1/set"
#define SET_ALL_TOPIC "home/switch/all/set"
#define ONE_WIRE_BUS D5
#define RELAY_PIN D7
#define LED_PIN D1

WiFiClient espClient;
PubSubClient client(espClient);

OneWire oneWire(ONE_WIRE_BUS);
DallasTemperature sensors(&oneWire);

bool state;


void connect()
{
  if (WiFi.status() == WL_CONNECTED) {
    return;
  }

  bool led = false;

  Serial.print("Connecting to WiFi: ");
  Serial.println(WIFI_SSID);

  WiFi.persistent(false);
  WiFi.mode(WIFI_OFF);
  WiFi.mode(WIFI_STA);

  WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
  while (WiFi.status() != WL_CONNECTED)
  {
    digitalWrite(LED_PIN, led);
    led = !led;
    delay(250);
    Serial.print(".");
  }
  for (int i = 0; i < 5; i++) {
    digitalWrite(LED_PIN, led);
    led = !led;
    delay(50);
  }
  digitalWrite(LED_PIN, HIGH);
  Serial.println("");
  Serial.println("WiFi connected");
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());

  digitalWrite(LED_PIN, LOW);
  while (!client.connected())
  {
    Serial.print("Connecting to MQTT broker ");
    Serial.print(MQTT_SERVER);
    Serial.print(":");
    Serial.println(MQTT_PORT);
    client.setServer(MQTT_SERVER, MQTT_PORT);
    if (client.connect(MQTT_CLIENT_ID, MQTT_USERNAME, MQTT_PASSWORD))
    {
      Serial.println("Connected to MQTT server");
    }
    else
    {
      Serial.print("MQTT connection failed: ");
      Serial.println(client.state());
      Serial.println("Trying again in 5 seconds");
      delay(5000);
    }
  }

  Serial.print("Subscribing to ");
  Serial.println(SET_TOPIC);
  client.subscribe(SET_TOPIC);
  Serial.print("Subscribing to ");
  Serial.println(SET_ALL_TOPIC);
  client.subscribe(SET_ALL_TOPIC);

  for (int i = 0; i < 5; i++) {
    digitalWrite(LED_PIN, led);
    led = !led;
    delay(50);
  }
  digitalWrite(LED_PIN, !state);
}


void turnOn() {
  state = true;
  Serial.println("Turning relay on");
  digitalWrite(RELAY_PIN, HIGH);
  digitalWrite(LED_PIN, !state);  // LED is inverted
}


void turnOff() {
  state = false;
  Serial.println("Turning relay off");
  digitalWrite(RELAY_PIN, LOW);
  digitalWrite(LED_PIN, !state);  // LED is inverted
}


void onMessage(char* topic, byte* payload, unsigned int length) {
  Serial.print("MQTT message received: ");
  Serial.println(topic);
  if (memcmp(payload, "true", 4) == 0) {
    turnOn();
  } else {
    turnOff();
  }
}



void update_temp() {
  float temperature;
  char jsonDoc[255];
  char sTemperature[10];

  sensors.requestTemperatures();
  temperature = sensors.getTempCByIndex(0);

  dtostrf(temperature, 6, 2, sTemperature);

  sprintf(jsonDoc, "{\"temperature\":{\"value\":%s,\"unit\":\"C\"}}", sTemperature);
  client.publish(SENSOR_TOPIC, jsonDoc);
  Serial.print("Tansmitted: ");
  Serial.print(SENSOR_TOPIC);
  Serial.print(" = ");
  Serial.println(jsonDoc);
}



void update_state() {
  char jsonDoc[100];
  sprintf(jsonDoc, "{\"state\": %s}", (state ? "true" : "false"));
  client.publish(STATE_TOPIC, jsonDoc);
  Serial.print("Tansmitted: ");
  Serial.print(STATE_TOPIC);
  Serial.print(" = ");
  Serial.println(jsonDoc);
  digitalWrite(LED_PIN, !state);  // LED is inverted
}


void setup()
{
  Serial.begin(115200);
  while (!Serial);
  sensors.begin();
  pinMode(RELAY_PIN, OUTPUT);
  pinMode(LED_PIN, OUTPUT);
  digitalWrite(LED_PIN, HIGH);  // LED is inverted
  client.setCallback(onMessage);
}


long temp_update_time;
long state_update_time;

void loop()
{
  connect();

  long current_time = millis();
  if (current_time > temp_update_time) {
    update_temp();
    temp_update_time = current_time + TEMP_UPDATE_INTERVAL;
  }
  if (current_time > state_update_time) {
    update_state();
    state_update_time = current_time + STATE_UPDATE_INTERVAL;
  }

  client.loop();
}
