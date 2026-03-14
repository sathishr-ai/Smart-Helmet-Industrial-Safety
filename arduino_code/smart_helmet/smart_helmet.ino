/*
 * AI-Integrated Smart Helmet for Industrial Safety
 * 
 * This code reads from multiple sensors attached to the Arduino Uno 
 * and sends the data over Serial (which can be read by an ESP8266/ESP32
 * or a connected PC/Mobile App).
 * 
 * Hardware Setup:
 * - MQ Gas Sensor -> A0
 * - LM35 Temp Sensor -> A1
 * - Flame/IR Sensor -> Digital Pin 2
 * - HC-SR04 Trigger -> Digital Pin 8
 * - HC-SR04 Echo -> Digital Pin 9
 */

// Pin Definitions
const int gasSensorPin = A0;
const int tempSensorPin = A1;
const int flameSensorPin = 2; // Digital out from flame sensor

const int trigPin = 8;
const int echoPin = 9;

// Thresholds (Adjust these based on calibration)
const int GAS_THRESHOLD = 400; 
const float TEMP_THRESHOLD = 45.0; // Celsius
const int COLLISION_DISTANCE_CM = 20; // Alerts if object is < 20cm

// Variables
int gasLevel = 0;
float temperature = 0.0;
bool fireDetected = false;
long duration;
int distance;

void setup() {
  Serial.begin(9600);
  
  pinMode(flameSensorPin, INPUT);
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
  
  Serial.println("Smart Helmet System Initialized.");
}

void loop() {
  // 1. Read Gas Sensor
  gasLevel = analogRead(gasSensorPin);
  
  // 2. Read Temperature (LM35 generates 10mV per degree Celsius)
  int tempReading = analogRead(tempSensorPin);
  float voltage = tempReading * (5.0 / 1023.0);
  temperature = voltage * 100.0; 
  
  // 3. Read Flame Sensor (Usually Active LOW)
  int flameVal = digitalRead(flameSensorPin);
  fireDetected = (flameVal == LOW);
  
  // 4. Read HC-SR04 Ultrasonic Sensor
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);
  
  duration = pulseIn(echoPin, HIGH);
  distance = duration * 0.034 / 2; // Calculate distance in cm
  
  // Print Sensor Values to Serial (Formatted as JSON or Delimited for App)
  // Format: GAS,TEMP,FIRE,DISTANCE
  Serial.print("{");
  Serial.print("\"gas\":"); Serial.print(gasLevel); Serial.print(",");
  Serial.print("\"temp\":"); Serial.print(temperature); Serial.print(",");
  Serial.print("\"fire\":"); Serial.print(fireDetected ? "true" : "false"); Serial.print(",");
  Serial.print("\"distance\":"); Serial.print(distance);
  Serial.println("}");
  
  // Basic Local Alerting Logic (E.g. turning on a local LED or Buzzer)
  if (gasLevel > GAS_THRESHOLD) {
    // Trigger Gas Alert
  }
  if (temperature > TEMP_THRESHOLD) {
    // Trigger Heat Alert
  }
  if (fireDetected) {
    // Trigger Fire Alert
  }
  if (distance > 0 && distance < COLLISION_DISTANCE_CM) {
    // Trigger Proximity/Impact Alert
  }

  delay(2000); // Wait 2 seconds before the next reading
}
