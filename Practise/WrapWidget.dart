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
        backgroundColor: Colors.blue,
        title: const Text('Beginner'),
      ),
      body: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.spaceAround,
        runSpacing: 10,
        spacing : 11,
       
          children: [
            Container(
              width : 100,
              height : 100,
              color : Colors.orangeAccent,
            ),
            Container(
              width : 100,
              height : 100,
              color : Colors.green,
            ),
            Container(
              width : 100,
              height : 100,
              color : Colors.pinkAccent,
            ),
            Container(
              width : 100,
              height : 100,
              color : Colors.yellow,
            ),
            Container(
              width : 100,
              height : 100,
              color : Colors.black12,
            ),
            Container(
              width : 100,
              height : 100,
              color : Colors.deepPurpleAccent,
            ),
            Container(
              width : 100,
              height : 100,
              color : Colors.orangeAccent,
            ),
            Container(
              width : 100,
              height : 100,
              color : Colors.green,
            ),
            Container(
              width : 100,
              height : 100,
              color : Colors.pinkAccent,
            ),
            Container(
              width : 100,
              height : 100,
              color : Colors.yellow,
            ),
            Container(
              width : 100,
              height : 100,
              color : Colors.black12,
            ),
            Container(
              width : 100,
              height : 100,
              color : Colors.deepPurpleAccent,
            ),
          ],
        ),
      
      );
  }
}
