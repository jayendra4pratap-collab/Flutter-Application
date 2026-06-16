import 'dart:async';

import 'package:flutter/material.dart';

import '../startingCode.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds : 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context)=> DashBoardScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body : Container(
        color : Colors.blueAccent,
        child: Center(child: Text('Amazon',style  : TextStyle(
          color : Colors.white, 
          fontSize: 25,
          fontWeight:FontWeight.bold)))
      )
    );
  }
}