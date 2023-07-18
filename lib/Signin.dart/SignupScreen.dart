import 'package:flutter/material.dart';
import 'package:soulspring/Reusablewidget/loginfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:soulspring/homescreen.dart';

import 'package:soulspring/main.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _usernameTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _signUp() async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: _emailTextController.text,
        password: _passwordTextController.text,
      );

      // User sign up successful
      print('User signed up: ${userCredential.user}');
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>  Homescreen(username:_usernameTextController.text, )));
    } catch (e) {
      // Error occurred during sign up
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF8A2BE2),
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF8A2BE2), // BlueViolet
                Color(0xFFBA55D3), // MediumOrchid
              ],
            ),
          ),
          child: Column(
            children: [
              reusableTextField(
                "Enter email",
                false,
                Icons.email,
                _emailTextController,
              ),
              const SizedBox(height: 20),
              reusableTextField(
                "Enter username",
                false,
                Icons.person,
                _usernameTextController,
              ),
              const SizedBox(height: 20),
              reusableTextField(
                "Set password",
                true,
                Icons.password,
                _passwordTextController,
              ),
              const SizedBox(height: 20),
              
              loginButton(context, false, _signUp),
            ],
          ),
        ),
      ),
    );
  }
}
