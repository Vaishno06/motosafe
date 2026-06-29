import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              const Text(
                "Hello, User",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              const Center(
                child: Text(
                  "Dashboard",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Expanded(
                child: Column(
                  children: [

                    Expanded(
                      child: Row(
                        children: const [

                          Expanded(
                            child: DashboardCard(
                              icon: Icons.bluetooth_connected,
                              title: "Bluetooth Connection",
                              subtitle:
                                  "Check your helmet Bluetooth connectivity",
                            ),
                          ),

                          SizedBox(width: 15),

                          Expanded(
                            child: DashboardCard(
                              icon: Icons.local_bar,
                              title: "Alcohol Level",
                              subtitle:
                                  "Monitor your alcohol level status",
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 15),

                    Expanded(
                      child: Row(
                        children: const [

                          Expanded(
                            child: DashboardCard(
                              icon: Icons.visibility,
                              title: "Fatigue Level",
                              subtitle:
                                  "Check your fatigue and alertness level",
                            ),
                          ),

                          SizedBox(width: 15),

                          Expanded(
                            child: DashboardCard(
                              icon: Icons.contact_phone,
                              title: "Emergency Contacts",
                              subtitle:
                                  "Manage your emergency contacts",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const DashboardCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),

      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          Icon(
            icon,
            size: 30,
            color: Colors.orange,
          ),

          const SizedBox(height: 10),

          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            subtitle,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}