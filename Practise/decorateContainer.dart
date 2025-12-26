import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Beginner'),
      ),

      body: Container(
        width: double.infinity,
        height : double.infinity,
        color : Colors.blue.shade200,
        child : Center(
          child: Container(
            height : 200,
            width : 200,
            
            decoration: BoxDecoration(
                color : Colors.blueGrey,
               // borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                border: Border.all(
                  width : 7,
                  color : Colors.white,
                ),
                boxShadow: [
                  BoxShadow(blurRadius: 11,spreadRadius: 10,color : Colors.black)
                ],
                shape : BoxShape.circle,
            ),
            
          ),
        ),
      ), 

      );
  }
}
