import 'package:flutter/material.dart';

class AIReportingScreen extends StatelessWidget {
  const AIReportingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E60D1), foregroundColor: Colors.white,
        title: const Text('AI-Assisted Reporting', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: 200, width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300], borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey[400]!, width: 2, style: BorderStyle.solid),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.camera_alt, size: 60, color: Colors.grey),
                  SizedBox(height: 10),
                  Text('Tap to capture photo', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity, height: 50,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.auto_awesome),
                label: const Text('Generate AI Description'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1E60D1), foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'AI will generate text here...',
                border: OutlineInputBorder(),
                filled: true, fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity, height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Go back to home after submitting
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF9800), foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                child: const Text('Submit Report', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}