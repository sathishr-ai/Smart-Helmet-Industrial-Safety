import 'package:flutter/material.dart';

void main() {
  runApp(const IndusSafetyApp());
}

class IndusSafetyApp extends StatelessWidget {
  const IndusSafetyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INDUS-SAFETY',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF1E1E2C),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E2C),
          elevation: 0,
        ),
      ),
      home: const UserPanelScreen(),
    );
  }
}

class UserPanelScreen extends StatelessWidget {
  const UserPanelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_rounded, color: Colors.grey),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.security, color: Colors.grey),
            const SizedBox(width: 8),
            const Text(
              "INDUS-SAFETY",
              style: TextStyle(letterSpacing: 2, fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            const Spacer(),
            const Icon(Icons.wifi_off, color: Colors.redAccent, size: 16),
            const SizedBox(width: 4),
            const Text("OFFLINE", style: TextStyle(color: Colors.redAccent, fontSize: 12, fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.admin_panel_settings, color: Colors.grey),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const AdminPanelScreen()));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Connecting Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 40),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF3B3B4F), Color(0xFF2A2A3D)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  children: [
                    Icon(Icons.cloud_off, size: 60, color: Colors.white70),
                    SizedBox(height: 16),
                    Text(
                      "CONNECTING..",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, letterSpacing: 3),
                    ),
                    SizedBox(height: 24),
                    Text(
                      "Initializing sensors...",
                      style: TextStyle(fontSize: 16, color: Colors.white70),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              // Sensor Status Header
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.sensors, color: Colors.white70, size: 20),
                      SizedBox(width: 8),
                      Text("SENSOR STATUS", style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5, fontSize: 16)),
                    ],
                  ),
                  Text("0/6 Active", style: TextStyle(color: Colors.white54)),
                ],
              ),
              const SizedBox(height: 16),
              // Sensor Cards
              _buildSensorCard(Icons.cloud, "GAS", "INACTIVE"),
              const SizedBox(height: 12),
              _buildSensorCard(Icons.local_fire_department, "FLAME", "INACTIVE"),
              const SizedBox(height: 12),
              _buildSensorCard(Icons.thermostat, "TEMPERATURE", "INACTIVE"),
              const SizedBox(height: 12),
              _buildSensorCard(Icons.water_drop, "HUMIDITY", "INACTIVE"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSensorCard(IconData icon, String title, String status) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF282838),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(color: const Color(0xFF383848), borderRadius: BorderRadius.circular(12)),
            child: Icon(icon, color: Colors.white70),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, letterSpacing: 1.2)),
              const SizedBox(height: 4),
              Text(status, style: const TextStyle(color: Colors.white54, fontSize: 12)),
            ],
          ),
          const Spacer(),
          Container(
            width: 12,
            height: 12,
            decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
          ),
        ],
      ),
    );
  }
}

class AdminPanelScreen extends StatelessWidget {
  const AdminPanelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD32F2F),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.admin_panel_settings, color: Colors.white),
            SizedBox(width: 8),
            Text(
              "ADMIN PANEL",
              style: TextStyle(letterSpacing: 2, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Spacer(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Stats Cards
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0xFF2E3D34),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.green.withOpacity(0.3)),
                      ),
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.wifi, color: Colors.greenAccent, size: 28),
                              SizedBox(width: 8),
                              Text("0/3", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.greenAccent)),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text("CONNECTED", style: TextStyle(color: Colors.white70, fontSize: 12, letterSpacing: 1)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0xFF383848),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.warning_amber_rounded, color: Colors.grey, size: 28),
                              SizedBox(width: 8),
                              Text("0", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.grey)),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text("ALERTS", style: TextStyle(color: Colors.white70, fontSize: 12, letterSpacing: 1)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              const Row(
                children: [
                  Icon(Icons.security, color: Colors.white70, size: 20),
                  SizedBox(width: 8),
                  Text("ALL HELMETS", style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5, fontSize: 16)),
                ],
              ),
              const SizedBox(height: 16),
              _buildHelmetCard("Helmet #1 - Worker A"),
              const SizedBox(height: 12),
              _buildHelmetCard("Helmet #2 - Worker B"),
              const SizedBox(height: 12),
              _buildHelmetCard("Helmet #3 - Worker C"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHelmetCard(String title) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF2E2E40),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(color: const Color(0xFF383848), borderRadius: BorderRadius.circular(12)),
                child: const Icon(Icons.security, color: Colors.white70),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(color: Colors.white24, borderRadius: BorderRadius.circular(4)),
                          child: const Text("CONNECTING...", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(width: 8),
                        const Text("Initializing...", style: TextStyle(color: Colors.white54, fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ),
              const Icon(Icons.wifi_off, color: Colors.grey),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _buildMiniSensorIcon(Icons.cloud),
              _buildMiniSensorIcon(Icons.local_fire_department),
              _buildMiniSensorIcon(Icons.thermostat),
              _buildMiniSensorIcon(Icons.water_drop),
              _buildMiniSensorIcon(Icons.directions_run),
              _buildMiniSensorIcon(Icons.warning_amber),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildMiniSensorIcon(IconData icon) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(color: const Color(0xFF383848), borderRadius: BorderRadius.circular(6)),
      child: Icon(icon, color: Colors.white30, size: 16),
    );
  }
}
