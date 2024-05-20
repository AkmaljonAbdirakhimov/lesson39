import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String? emailError;
  String? passwordError;
  bool hidePassword = true;

  void login() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email.isEmpty) {
      // Xatolik  - Email kiriting
      emailError = "Email kiriting";
    } else if (!email.contains("@")) {
      // Xatolik - To'g'ri email kiriting
      emailError = "Email xato, boshqatdan kiriting";
    } else {
      // email to'g'ri
      emailError = null;
    }

    if (password.isEmpty) {
      passwordError = 'Parol kiriting!';
    } else if (password.length < 8) {
      passwordError = 'Not enough characters!';
    } else {
      passwordError = null;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.email),
                labelText: "Email",
                hintText: "Email",
                errorText: emailError,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: hidePassword,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.password),
                suffixIcon: IconButton(
                  onPressed: () {
                    hidePassword = !hidePassword;
                    setState(() {});
                  },
                  icon: Icon(hidePassword
                      ? CupertinoIcons.eye_slash
                      : CupertinoIcons.eye),
                ),
                labelText: "Parol",
                hintText: "Parol",
                errorText: passwordError,
              ),
              onSubmitted: (value) {
                login();
              },
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
