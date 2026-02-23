import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const RoadHeroApp());
}

class RoadHeroApp extends StatelessWidget {
  const RoadHeroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Road Hero',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF1E60D1), // Deep Blue
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E60D1),
          secondary: const Color(0xFFFF9800), // Bright Orange
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),

      home: const LoginScreen(),
    );
  }
}
