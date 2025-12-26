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
        children: [
          SizedBox.square (
            dimension: 200,
            child : ElevatedButton(onPressed: (){
          
            }
            , child: Text('Clicked'))
          ),
          SizedBox(
            width : 20
          ),

          SizedBox.square (
            dimension: 200,
            child : ElevatedButton(onPressed: (){
          
            }
            , child: Text('Clicked'))
          ),
        ],
      ),
      );
  }
}
