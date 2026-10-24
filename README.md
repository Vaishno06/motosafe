MotoSafe - Smart Helmet System Using IoT

An IoT-based smart helmet system designed to improve rider safety by monitoring alcohol levels, fatigue, and crash conditions. This system uses an ESP32-S3 to collect and process sensor data and communicates with a Flutter mobile application through Bluetooth.


Features:
- Alcohol level monitoring using MQ-3 sensor
- Fatigue and drowsiness detection using IR eye-blink sensor
- Crash detection using MPU6050 accelerometer and gyroscope
- GPS location tracking using NEO-6M GPS Module
- Bluetooth communication between helmet and mobile application
- Emergency contact management
- Real-time safety monitoring dashboard
- Total Safe Score based on monitored condition

Technology Stack:
(HardWare)
- ESP32-S3
- MQ-3 Alcohol Sensor
- IR Eye Blink Sensor
- MPU6050
- NEO-6M GPS 
- 18650 Battery

(Software)
- Flutter
- Dart
- Arduino IDE
- ESP32 BLE
- Git and GitHub

Working:
1. Sensors collect rider safety data.
2. ESP32-S3 processes the sensor readings.
3. Relevant information is displayed on the OLED.
4. Safety data is transmitted to the Flutter application using Bluetooth.
5. The application displays the rider's safety status through the dashboard.
6. The system evaluates the monitored parameters and generates a Total Safe Score


Project Status:
Currently under development.





