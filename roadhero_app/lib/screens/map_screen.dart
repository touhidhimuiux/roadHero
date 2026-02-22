import 'package:flutter/material.dart';
import 'ai_reporting_screen.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E60D1), 
        foregroundColor: Colors.white,
        title: const Text('Community Map', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [IconButton(icon: const Icon(Icons.search), onPressed: () {})],
      ),
      body: Stack(
        children: [
          // Mock Map Background
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              image: const DecorationImage(
                image: NetworkImage('https://i.stack.imgur.com/HILmr.png'), 
                fit: BoxFit.cover, opacity: 0.5,
              )
            ),
          ),
          // Mock Pins
          const Positioned(top: 100, left: 80, child: Icon(Icons.location_on, color: Colors.red, size: 40)),
          const Positioned(top: 200, left: 200, child: Icon(Icons.location_on, color: Colors.orange, size: 40)),
          const Positioned(top: 350, left: 120, child: Icon(Icons.location_on, color: Colors.red, size: 40)),
          const Positioned(top: 150, left: 280, child: Icon(Icons.location_on, color: Colors.green, size: 40)),
          
          // Floating Report Button
          Positioned(
            bottom: 20, left: 60, right: 60,
            child: ElevatedButton.icon(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AIReportingScreen())),
              icon: const Icon(Icons.edit),
              label: const Text('Add Report', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF9800), 
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                // FIX: Replaced boxShadow with elevation and shadowColor
                elevation: 5,
                shadowColor: Colors.black26, 
              ),
            ),
          )
        ],
      ),
    );
  }
}