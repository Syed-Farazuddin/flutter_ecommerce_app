import 'package:ecommerce/pages/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  void handleLogin() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          "The Shoe Spot",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.grey[200],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 150),
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              "Login",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: email,
              decoration: const InputDecoration(
                hintText: "Enter your email address",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: password,
              decoration: const InputDecoration(
                hintText: "Enter your password",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Haven't registered yet ? ",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.end,
                ),
                const SizedBox(
                  width: 0,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (builder) => const RegisterPage()));
                  },
                  child: const Text(
                    "Register Now",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: handleLogin,
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
