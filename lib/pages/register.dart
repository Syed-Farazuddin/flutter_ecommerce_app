import 'package:ecommerce/pages/login.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController confirm = TextEditingController();
  void handleRegister() {}
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
              "Register Page",
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
              controller: pass,
              decoration: const InputDecoration(
                hintText: "Enter your password",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: confirm,
              decoration: const InputDecoration(
                hintText: "Confirm your password",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Already have an Account ? ",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.end,
                ),
                const SizedBox(
                  width: 0,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (builder) => const LoginPage()));
                  },
                  child: const Text(
                    "Login",
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
              onPressed: handleRegister,
              child: const Text(
                "Register",
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
