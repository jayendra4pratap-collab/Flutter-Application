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
      body: SizedBox(
        height : 300,
        width : 300,
        child: Stack(
          children: [
            Container(height : 200,width:200,color : Colors.amberAccent),
           // Positioned(right: 20 , top : 20,child: Container(height : 50,width:50,color : Colors.blueAccent)),
           Positioned(top : 20 , left : 20 ,child: Container(height : 200,width:200,color : Colors.grey))
          ],
        ),
      ),
      );
  }
}
