
import 'dart:async';

import 'package:flutter/material.dart';

import 'Whatsapp.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  
  void initState(){
    super.initState();

    Timer(Duration(seconds : 1), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage(title: '')));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
     body : Center(
        child: Container(
          height: double.infinity,
          width : double.infinity,
          color: Colors.green.shade100,
          child: SizedBox(
            child: Image.asset('assets/images/whatsapp.png'),
          ),
        ),
      )
    );
  }
}