import 'package:flutter/material.dart';

class welcomeScreen extends StatelessWidget {
  const welcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //  color: Colors.black,
        height: 250,
        width: 300,
        decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)
                )),

        child: const Center(
          child: Text(
            "Muskan \n Arshad",
            style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w100,
                letterSpacing: 4),
          ),
        ),
      ),
    );
  }
}
