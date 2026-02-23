import 'package:flutter/material.dart';
import 'validation_screen.dart';
import 'ai_reporting_screen.dart';
import 'leaderboard_screen.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback onNavigateToMap;
  const HomeScreen({super.key, required this.onNavigateToMap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E60D1),
        foregroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shield, color: Colors.white),
            SizedBox(width: 8),
            Text('Road Hero', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.redAccent),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hello, Asif!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 20),

            // Image Banner
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 10),
                ],
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1515162816999-a0c47dc192f7?q=80&w=1000&auto=format&fit=crop',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Buttons
            _buildNavButton(
              context,
              'Report a Pothole',
              Icons.home_repair_service,
              const Color(0xFFFF9800),
              () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AIReportingScreen()),
              ),
            ),
            const SizedBox(height: 15),

            _buildNavButton(
              context,
              'View Map',
              Icons.location_on,
              const Color(0xFF1E60D1),
              onNavigateToMap,
            ),
            const SizedBox(height: 15),

            _buildNavButton(
              context,
              'Leaderboard',
              Icons.emoji_events,
              const Color(0xFF1E60D1),
              () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const LeaderboardScreen()),
              ),
            ),
            const SizedBox(height: 15),

            _buildNavButton(
              context,
              'Verify Reports',
              Icons.verified,
              Colors.green[700]!,
              () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ValidationScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavButton(
    BuildContext context,
    String label,
    IconData icon,
    Color color,
    VoidCallback onPressed,
  ) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(
          label,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
