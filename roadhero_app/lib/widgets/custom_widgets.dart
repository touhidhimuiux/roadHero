import 'package:flutter/material.dart';

Widget buildTextField(String hint, IconData icon,
    {bool isPassword = false}) {
  return TextField(
    obscureText: isPassword,
    decoration: InputDecoration(
      prefixIcon: Icon(icon),
      hintText: hint,
      filled: true,
      fillColor: Colors.grey[200],
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide.none,
      ),
    ),
  );
}

Widget buildPrimaryButton(String text) {
  return Container(
    width: double.infinity,
    height: 55,
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: [Colors.orange, Colors.deepOrange],
      ),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Center(
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget buildSocialButton(
    String text, Color bgColor, Color textColor, IconData icon) {
  return Container(
    width: double.infinity,
    height: 55,
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: Colors.grey.shade300),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: textColor),
        const SizedBox(width: 10),
        Text(
          text,
          style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w500),
        ),
      ],
    ),
  );
}