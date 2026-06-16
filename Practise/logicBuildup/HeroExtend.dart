import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Detail'),
      ),
      body : Container(
        child : Hero(tag:'Logo' , child: Image.asset('assets/images/logo.jpeg')),
      )
    );
  }
}