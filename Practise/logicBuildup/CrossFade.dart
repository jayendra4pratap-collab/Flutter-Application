import 'dart:async';

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
   var isFirst = true;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3), (){
        reload();

    });
  }

  void reload()
  {
    setState(() {
      isFirst=false;
    });
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Beginner'),
      ),
      body: Center(
        child: AnimatedCrossFade(
              duration: Duration(seconds: 2),
              firstChild: Container(
                width :200,
                height : 200,
                color : Colors.amberAccent
              ),
              secondChild: Image.asset('assets/images/BoyLogo.png',width: 200,height : 200),
             // crossFadeState: CrossFadeState.showFirst,
                crossFadeState: isFirst ? CrossFadeState.showFirst :CrossFadeState.showSecond,
        ),
      ),
      );
  }
}
