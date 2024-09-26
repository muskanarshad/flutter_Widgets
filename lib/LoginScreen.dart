import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Login",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            const TextField(),
            const SizedBox(
              height: 20,
            ),
            const TextField(),
            ElevatedButton(
                onPressed: () {
                  print("hello");
                },
                child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
