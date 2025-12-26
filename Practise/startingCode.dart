import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main()
{
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget   // how looks app
{
  const FlutterApp({super.key});

  //const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : 'My App',
      debugShowCheckedModeBanner: false,
      theme : ThemeData(
        primarySwatch: Colors.blue,
      ),
      home : DashBoardScreen() ,// for starting page of the app
    );
  }

}
class DashBoardScreen extends StatelessWidget
{
  const DashBoardScreen({super.key});

//  const DashBoardScreen({super.key});
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title : Text("DashBoard"),
      ),
      body : Container(
        color : Colors.blue.shade50,
        )
    );
  }
    
}