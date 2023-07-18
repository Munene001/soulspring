import 'package:flutter/material.dart';
import 'Signin.dart/login.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds:3),(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder:(context)=>Login()),
      );
    });

    return Scaffold(
      body: Container(
        color: Colors.blue, // Set the background color to blue
        child: Center(
          child: Text(
            'Soulspring',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}