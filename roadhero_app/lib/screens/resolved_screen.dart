import 'package:flutter/material.dart';

class ResolvedScreen extends StatelessWidget {
  const ResolvedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1E60D1), Color(0xFF357ABD)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(30),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 20,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Sparkle + Check Icon
                const Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: -10,
                      left: 20,
                      child: Icon(Icons.star, color: Colors.amber, size: 18),
                    ),
                    Positioned(
                      top: 10,
                      right: 25,
                      child: Icon(Icons.star, color: Colors.orange, size: 14),
                    ),
                    Positioned(
                      bottom: -5,
                      left: 40,
                      child: Icon(Icons.star, color: Colors.yellow, size: 16),
                    ),
                    Icon(Icons.check_circle, color: Colors.green, size: 95),
                  ],
                ),
                const SizedBox(height: 25),
                const Text(
                  "Issue Resolved!",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  "This pothole has been fixed.\nThank you for your support!",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 30),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1E60D1),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      // This magically pops all screens and takes you straight back to the Home Dashboard!
                      Navigator.of(context).popUntil((route) => route.isFirst);
                    },
                    child: const Text(
                      "Great!",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
