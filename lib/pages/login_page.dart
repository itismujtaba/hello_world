import 'package:flutter/material.dart';
import 'package:hello_world/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    Navigator.pushNamed(context, MyRoutes.homeRoute);
  }

  // const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color.fromARGB(255, 255, 255, 255),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                ),
                const Text(
                  "Welcome back",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(237, 13, 12, 32)),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                      const SizedBox(
                        height: 20.0,
                      ),
                      InkWell(
                        onTap: () => moveToHome(context),
                        //   },

                        child: Container(
                          width: 110,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 113, 85, 187),
                              borderRadius: BorderRadius.circular(25)),
                          child: const Text("Login",
                              style: TextStyle(
                                color: Color.fromARGB(255, 251, 251, 251),
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      )

                      // ElevatedButton(
                      //   style: TextButton.styleFrom(),
                      //   onPressed: () {
                      //
                      //   child: const Text("Login"),
                      // )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
// 9849163495
