import 'package:flutter/material.dart';

class welcomeScreen extends StatelessWidget {
  const welcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Center(
        child: Container(
          //  color: Colors.black,
          // alignment: Alignment.center,
          //padding: EdgeInsets.fromLTRB(50, 0, 50, 70),
          // padding: const EdgeInsets.only(
          // left: 40,
          // right: 20),
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          height: 250,
          width: 300,
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),

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
      ),
    const  SizedBox(
        height: 50,
      ),
      Center(
        child: Container(
          //  color: Colors.black,
          // alignment: Alignment.center,
          //padding: EdgeInsets.fromLTRB(50, 0, 50, 70),
          // padding: const EdgeInsets.only(
          // left: 40,
          // right: 20),
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          height: 250,
          width: 300,
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),

          child: const Center(
            child: Text(
              "Arshad \nMuskan",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w100,
                  letterSpacing: 4),
            ),
          ),
        ),
      ),
    ]));
  }
}
