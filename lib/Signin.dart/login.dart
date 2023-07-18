import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:soulspring/Reusablewidget/loginfield.dart';
import 'package:soulspring/homescreen.dart';

import '../main.dart';
import 'SignupScreen.dart';
  
  class Login extends StatefulWidget {

   Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailTextController = TextEditingController();

  TextEditingController _passwordTextController = TextEditingController();

  String _errorMessage = ''; 
  get title => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: reusableTextField(
                  "enter email",
                  false,
                  Icons.email,
                  _emailTextController,
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: reusableTextField(
                  "enter password",
                  true,
                  Icons.password_outlined,
                  _passwordTextController,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    _signInWithEmailAndPassword(context);
                  },
                  child: Text('Sign In'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: signupField(context),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                _errorMessage,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _signInWithEmailAndPassword(BuildContext context) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
          email: _emailTextController.text,
          password: _passwordTextController.text,
        )
        .then((value) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Homescreen(username: '',)),
          );
        })
        .catchError((error) {
          _errorMessage = ''; // Update the error message
          Navigator.of(context).setState(() {}); // Trigger a rebuild of the widget
        });
  }

  Row signupField(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Don't have an account?|",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignupScreen()),
            );
          },
          child: const Text(
            "Sign up",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}

