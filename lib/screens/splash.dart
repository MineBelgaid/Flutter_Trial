// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:microclub_homework/screens/firstscreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FirstScreen()),
          );
        },
        backgroundColor: Colors.white,
        foregroundColor: Colors.cyan,

        child: const Icon(Icons.arrow_forward),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background2.jpg"), fit: BoxFit.cover),
        ),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(top: 80,left: 25),
          child: Text("Let's Tour",style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontFamily: 'Lobster',

          ),),
        ),
      ),
    );
  }
}
