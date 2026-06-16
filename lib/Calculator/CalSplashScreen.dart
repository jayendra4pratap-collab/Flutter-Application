

import 'dart:async';

import 'package:flutter/material.dart';

import 'Calculator.dart';

class CalSplashScreen extends StatefulWidget{

  @override
  State<CalSplashScreen> createState() => _CalSplashScreenState();
}

class _CalSplashScreenState extends State<CalSplashScreen> {
  @override

  void initState() {
    super.initState();
    Timer(Duration(seconds : 1),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(title: ''),) );
    });
  }



  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey.shade300,
          child: Center(
            child: SizedBox(
              height: 200,
              width: 200,
              child : Image.asset('assets/images/cal.png')
            ),
          ),
        ),
      ),
    );
    
  }
}