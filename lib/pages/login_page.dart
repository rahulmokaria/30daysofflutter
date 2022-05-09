import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              // Image.asset("assets/images/login_image.svg"),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter Username", labelText: "Username"),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    // print("The button is working you idiot");
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: const Text("Login"),
                  style: TextButton.styleFrom(
                    minimumSize: Size(100, 40), 
                  )),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ));
  }
}
