<div align="center">

![Header](https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=1E293B,3B82F6,8B5CF6&height=250&section=header&text=INDUS-SAFETY&fontSize=70&fontAlignY=35&desc=AI-Integrated%20Smart%20Helmet%20Ecosystem&descAlignY=55&descSize=20&animation=fadeIn)

<br>

<p align="center">
  <b><a href="#-vision">Vision</a></b> • 
  <b><a href="#-project-gallery">Showcase</a></b> • 
  <b><a href="#-key-features">Features</a></b> • 
  <b><a href="#-tech-stack">Tech Stack</a></b> • 
  <b><a href="#%EF%B8%8F-hardware-ecosystem">Hardware</a></b> • 
  <b><a href="#-getting-started">Deploy</a></b> • 
  <b><a href="#-authority--vision">Contact</a></b>
</p>

<br>

<div style="display: flex; justify-content: center; flex-wrap: wrap; gap: 10px;">
  <img src="https://img.shields.io/badge/STATUS-ACTIVE_DEPLOY-3B82F6?style=for-the-badge&logo=googlecloud&logoColor=white" alt="Status" />
  <img src="https://img.shields.io/badge/VERSION-2.0.0_ENTERPRISE-0288D1?style=for-the-badge&logo=githubreleases&logoColor=white" alt="Version" />
  <img src="https://img.shields.io/badge/FIRMWARE-ARDUINO_UNO-00979D?style=for-the-badge&logo=arduino&logoColor=white" alt="Arduino" />
  <img src="https://img.shields.io/badge/MOBILE-FLUTTER-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter" />
  <img src="https://img.shields.io/badge/LICENSE-MIT-1E293B?style=for-the-badge&logo=git&logoColor=white" alt="License" />
</div>

<br>

[![Watch Demo](https://img.shields.io/badge/WATCH_LIVE_DEMO-FF3B30?style=for-the-badge&logo=youtube&logoColor=white)](#-showcase)

<br>

<i>Next-generation environmental hazard monitoring and collision detection utilizing IoT telemetry and a cross-platform Flutter ecosystem.</i>

</div>

---

## 🔭 Vision

Every year, thousands of industrial accidents occur due to unnoticed environmental hazards and sudden collisions. **INDUS-SAFETY** is an AI-powered smart helmet ecosystem designed to actively monitor surroundings, predict hazards, and alert workers & supervisors in real-time, drastically reducing workplace fatalities and injury exposure.

### 🌟 Engineering Highlights
✔ **Multi-sensor embedded logic** (Gas, Flame, Temp, Ultrasonic) built natively on **C/C++**  
✔ **Real-time spatial awareness algorithms** for zero-latency collision prevention  
✔ **Cross-platform mobile client** featuring offline-capable Worker & Admin dashboards  
✔ **Hardware-to-Cloud telemetry** engineering for enterprise-scale safety oversight  

---

## 📸 Project Gallery

<div align="center">

| 🛠️ Internal Embedded Assembly | 📡 External Sensor Layout |
|:---:|:---:|
| <img src="assets/hardware_internal.jpeg" alt="Internal Wiring" width="450" style="border-radius:15px; border: 2px solid #1E293B; box-shadow: 0px 10px 15px rgba(0,0,0,0.5); margin: 10px;"/> | <img src="assets/hardware_external.jpeg" alt="Ultrasonic Mount" width="450" style="border-radius:15px; border: 2px solid #1E293B; box-shadow: 0px 10px 15px rgba(0,0,0,0.5); margin: 10px;"/> |

<br>

| 📱 Worker Monitoring Node | 🛡️ Admin Fleet Dashboard |
|:---:|:---:|
| <img src="assets/app_worker.jpeg" alt="Worker Status App" height="450" style="border-radius:15px; border: 2px solid #1E293B; box-shadow: 0px 10px 15px rgba(0,0,0,0.5); margin: 10px;"/> | <img src="assets/app_admin.jpeg" alt="Admin Dashboard App" height="450" style="border-radius:15px; border: 2px solid #1E293B; box-shadow: 0px 10px 15px rgba(0,0,0,0.5); margin: 10px;"/> |

</div>

---

## 🏗️ System Architecture

Our robust IoT architecture guarantees fault-tolerant data transmission from the worker's physical environment right to the supervisor's dashboard.

```mermaid
graph TD
    subgraph Hardware [Smart Helmet Hardware Node]
        A[Arduino Uno Core] -->|Analog Read| B[MQ Gas Sensor]
        A -->|Digital Read| C[Flame Sensor]
        A -->|Analog Read| D[LM35 Temp/Humidity]
        A -->|PWM Pulse| E[HC-SR04 Ultrasonic]
    end
    
    A -->|Serial over UART| F[ESP8266/ESP32 Bridge]
    
    subgraph Cloud [Cloud & Network Infrastructure]
        F -->|MQTT/WebSockets| G[Real-Time Event API]
    end
    
    subgraph Mobile [INDUS-SAFETY Flutter App]
        G -->|Localized Telemetry| H[Worker Dashboard UI]
        G -->|Aggregated Fleet Data| I[Enterprise Admin Panel]
    end
```

---

## ✨ Key Features

### 🛡️ Environmental Hazard Intelligence
*   **Toxic Gas Detection:** Alerts workers to the presence of harmful gases, fumes, or smoke instantly using an MQ-series chemical sensor.
*   **Fire Hazard Proximity:** Identifies nearby flames & excessive IR heat before human detection limits using sensitive IR fire detectors.
*   **Heat Stress Prevention:** Continuously logs thermal data, providing haptic or UI warnings before physiological heat limits are reached.

### 🚨 Collision & Proximity Defense
*   **Ultrasonic Spatial Awareness:** Utilizes dual HC-SR04 ultrasonic sensors to map approaching heavy machinery or overhead structures, preventing fatal strikes.

### 📱 Enterprise App Ecosystem
*   **Worker View:** A sleek, dark-mode Flutter app displaying live sensor statuses directly to the wearer. Built for extreme visibility in dark environments.
*   **Admin Dashboard:** Empowers Site Supervisors to monitor an entire fleet of helmets simultaneously. Instant visual and push-notification alerts for an entire site.

---

## 🛠️ Hardware Ecosystem

The localized brain of the INDUS-SAFETY system relies on the **Arduino Uno**, wired specifically for rapid fault detection:

| Component Type | Model | Core Function | Interface Layer |
| :--- | :--- | :--- | :--- |
| **Microcontroller** | Arduino Uno R3 | Central Data Processing | Core Motherboard |
| **Collision Array** | HC-SR04 | Proximity & Strike Prevention | Digital I/O (Echo/Trig) |
| **Chemical Sensor** | MQ Series (MQ-2) | Gas/Smoke Data Logging | Analog (A0) |
| **Flame Detector** | Standard IR Sensor | Direct Fire Range Detection | Digital |
| **Thermal Sensor** | LM35 / DHT11 | Temp & Humidity Streams | Analog (A1) |
| **IoT Bridge** | ESP8266/ESP32 | Wireless Telemetry Feed | Serial (TX/RX) |

---

## 💻 Tech Stack

<div align="center">
  <img src="https://img.shields.io/badge/c++-%2300599C.svg?style=for-the-badge&logo=c%2B%2B&logoColor=white" alt="C++" />
  <img src="https://img.shields.io/badge/Arduino-00979D?style=for-the-badge&logo=Arduino&logoColor=white" alt="Arduino" />
  <img src="https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white" alt="Flutter" />
  <img src="https://img.shields.io/badge/Dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white" alt="Dart" />
  <img src="https://img.shields.io/badge/Firebase-ffca28?style=for-the-badge&logo=firebase&logoColor=black" alt="Firebase" />
  <img src="https://img.shields.io/badge/MQTT-660066?style=for-the-badge&logo=mqtt&logoColor=white" alt="MQTT" />
</div>

---

## 🚀 Getting Started

Deploying the INDUS-SAFETY system in your local environment.

<details>
<summary><b>🛠️ 1. Firmware Flash (Arduino)</b></summary>
<br>

1. Navigate to the `arduino_code/smart_helmet/` directory.
2. Open `smart_helmet.ino` using the Arduino IDE.
3. Validate that your Board Manager points to **Arduino Uno** and select your COM Port.
4. Verify compilation and click **Upload** to flash the microcontroller.
</details>

<details>
<summary><b>📱 2. Mobile Client Deployment (Flutter)</b></summary>
<br>

1. Ensure your system meets the [Flutter SDK Requirements](https://flutter.dev/docs/get-started/install).
2. Open your bash/terminal and move into the application root:
   ```bash
   cd indus_safety_app
   ```
3. Resolve dart dependencies:
   ```bash
   flutter pub get
   ```
4. Connect an ADB-enabled device or launch the iOS/Android simulator.
5. Build and run the debug client:
   ```bash
   flutter run
   ```
</details>

---

## 🤝 Contributing

We welcome contributions from embedded engineers and mobile developers!  
Check our [issues tracker](#) to see open tickets or submit a pull request.

---

## 👨‍💻 Authority & Vision

<br>

<div align="center">
  <img src="https://img.shields.io/badge/Developed_By-Sathish_R-1E293B?style=for-the-badge&labelColor=0F172A&color=3B82F6" alt="Author" />
  <p><em>Aspiring AI Engineer | Architecting Intelligent Systems</em></p>
  
  <br>

  <a href="mailto:sathxsh57@gmail.com">
    <img src="https://img.shields.io/badge/Say_Hello-sathxsh57@gmail.com-1E293B?style=for-the-badge&logo=gmail&logoColor=3B82F6&labelColor=0F172A" alt="Email" />
  </a>
  <a href="https://github.com/sathishr-ai">
    <img src="https://img.shields.io/badge/GitHub-sathishr--ai-1E293B?style=for-the-badge&logo=github&logoColor=3B82F6&labelColor=0F172A" alt="GitHub" />
  </a>
  <a href="https://www.linkedin.com/in/sathish-r-2393412a5">
    <img src="https://img.shields.io/badge/LinkedIn-Sathish_R-1E293B?style=for-the-badge&logo=linkedin&logoColor=0077b5&labelColor=0F172A" alt="LinkedIn" />
  </a>
</div>

---

## 📄 License

This repository is governed by the **MIT License** - view the [LICENSE](LICENSE) file for complete details.

---
<div align="center">
  <i>Stay Safe, Work Smart. Built with ❤️ for Industrial Safety.</i>
</div>
