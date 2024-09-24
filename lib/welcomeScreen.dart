import 'package:flutter/material.dart';

class welcomeScreen extends StatelessWidget {
  const welcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: 250,
        width: 300,
        child: const Text(
          "Muskan",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
