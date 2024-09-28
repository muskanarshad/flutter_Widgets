import 'package:flutter/material.dart';
import 'package:project/customButton.dart';
import 'package:project/customTextField.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
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
            // TextField(
            //   controller: emailController,
            //   decoration: const InputDecoration(
            //     prefixIcon: Icon(
            //       Icons.email,
            //       color: Colors.grey,
            //     ),
            //     errorBorder: OutlineInputBorder(
            //         borderSide: BorderSide(
            //           color: Colors.red,
            //           width: 2,
            //         ),
            //         borderRadius: BorderRadius.all(Radius.circular(12))),
            //     focusedBorder: OutlineInputBorder(
            //         borderSide: BorderSide(
            //           color: Colors.lightGreen,
            //           width: 2,
            //         ),
            //         borderRadius: BorderRadius.all(Radius.circular(12))),
            //     border: OutlineInputBorder(
            //         borderSide: BorderSide(
            //           color: Colors.grey,
            //           width: 2,
            //         ),
            //         borderRadius: BorderRadius.all(Radius.circular(12))),
            //   ),
            // ),

            CustomTextField(
              suffixIcon: Icon(color: Colors.grey, Icons.email),
              controller: emailController,
            ),

            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              suffixIcon: Icon(color: Colors.grey, Icons.lock),
              ispass: true,
              controller: passwordcontroller,
            ),

            ElevatedButton(
                onPressed: () {
                  print(emailController.text.trim());
                },
                child: Text("Login")),
            MaterialButton(
                onPressed: () {
                  print("SignUp");
                },
                child: Text("SignUp")),

            // InkWell(
            //     onTap: () {
            //       print(emailController.text.trim());
            //       print(passwordcontroller.text.trim());
            //     },
            //     child: Container(
            //       height: 50,
            //       width: double.infinity,
            //       decoration: BoxDecoration(
            //           color: Colors.green,
            //           borderRadius: BorderRadius.circular(20)),
            //       child: Center(
            //         child: Text(
            //           "Forget Password?",
            //           style: TextStyle(
            //             color: Colors.white,
            //           ),
            //         ),
            //       ),
            //     ))

            CustomButton(
              onTap: () {
                print(emailController.text.trim());
                print(passwordcontroller.text.trim());
              },
              text: "LOG IN",
            )
          ],
        ),
      ),
    );
  }
}
