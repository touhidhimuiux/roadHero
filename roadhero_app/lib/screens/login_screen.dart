import 'package:flutter/material.dart';
import '../widgets/custom_widgets.dart';
import 'signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1E5DB0), Color(0xFF2E86DE)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 60),
              const Icon(Icons.location_on,
                  size: 70, color: Colors.orange),
              const SizedBox(height: 10),
              const Text(
                "Road Hero",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 40),

              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(25),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40)),
                  ),
                  child: Column(
                    children: [
                      buildTextField("Email", Icons.email),
                      const SizedBox(height: 20),
                      buildTextField("Password", Icons.lock,
                          isPassword: true),
                      const SizedBox(height: 25),

                      buildPrimaryButton("Login"),

                      const SizedBox(height: 20),

                      buildSocialButton(
                          "Sign in with Google",
                          Colors.white,
                          Colors.black,
                          Icons.g_mobiledata),

                      const SizedBox(height: 15),

                      buildSocialButton(
                          "Sign in with Apple",
                          Colors.black,
                          Colors.white,
                          Icons.apple),

                      const SizedBox(height: 20),

                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.center,
                        children: [
                          const Text("No account? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) =>
                                        const SignupScreen()),
                              );
                            },
                            child: const Text(
                              "Register",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight:
                                      FontWeight.bold),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}