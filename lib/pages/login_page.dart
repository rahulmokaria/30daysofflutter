import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String name = "";
  bool changedBox = false;
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
              Text(
                "Welcome $name",
                style: const TextStyle(
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
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
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

              InkWell(
                onTap: () async {
                  setState(() {
                    changedBox = true;
                  });

                  await Future.delayed(const Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: (changedBox) ? 100 : 150,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: changedBox ? BoxShape.circle : BoxShape.rectangle,
                    // borderRadius: BorderRadius.circular(changedBox ? 0 : 8),
                  ),
                  child: changedBox
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                ),
              ),
              // ElevatedButton(
              //     onPressed: () {
              //       // print("The button is working you idiot");
              //       Navigator.pushNamed(context, MyRoutes.homeRoute);
              //     },
              //     child: const Text("Login"),
              //     style: TextButton.styleFrom(
              //       minimumSize: const Size(100, 40),
              //     )),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ));
  }
}
