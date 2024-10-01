import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project/LoginScreen.dart';
import 'package:project/customButton.dart';
import 'package:project/customTextField.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController UserController = TextEditingController();
    TextEditingController ContactController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    TextEditingController Confirmpasswordcontroller = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Center(
                child: Text(
                  "SignUp",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                ),
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
              const SizedBox(
                height: 50,
              ),
              Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomTextField(
                    hintText: "Enter Your Name",
                    suffixIcon: Icon(color: Colors.grey, Icons.people),
                    controller: UserController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hintText: "Enter Your Contact No",
                    suffixIcon: Icon(color: Colors.grey, Icons.phone),
                    controller: ContactController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hintText: "Enter Your Email ",
                    suffixIcon: Icon(color: Colors.grey, Icons.email),
                    controller: emailController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hintText: "Enter Your Password",
                    suffixIcon: Icon(color: Colors.grey, Icons.lock),
                    ispass: true,
                    controller: passwordcontroller,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hintText: "Enter Your Password",
                    suffixIcon: Icon(color: Colors.grey, Icons.lock),
                    ispass: true,
                    controller: Confirmpasswordcontroller,
                  ),
                ],
              )),
              // ElevatedButton(
              //     onPressed: () {
              //       print(emailController.text.trim());
              //     },
              //     child: Text("Login")),
              // MaterialButton(
              //     onPressed: () {
              //       print("SignUp");
              //     },
              //     child: Text("SignUp")),

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

              const SizedBox(
                height: 100,
              ),
              CustomButton(
                  onTap: () {
                    log(UserController.text.trim());
                    log(ContactController.text.trim());
                    log(emailController.text.trim());
                    log(passwordcontroller.text.trim());

                    UserController.clear();
                    passwordcontroller.clear();
                    emailController.clear();
                    ContactController.clear();
                  },
                  text: "SignUp"),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an Account",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Loginscreen()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
