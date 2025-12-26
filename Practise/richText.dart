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
      body:RichText(
        text: TextSpan(
          style : TextStyle(
            color : Colors.amberAccent,
            fontSize : 20, 
          ),
          children: <TextSpan>[
            TextSpan(text : "Hello "),
            TextSpan(text : "Jay!!",style: TextStyle( fontSize: 40,color : Colors.redAccent,fontWeight: FontWeight.bold)),
            TextSpan(text : "Welcome to "),
            TextSpan(text : "Flutter",style :TextStyle(fontSize: 41,color : Colors.redAccent,fontWeight: FontWeight.bold,fontFamily:'' )),

          ]
        )
      )
      
       /*Row(
        children: [
          Text('Hello ',style : TextStyle( fontSize : 20,color : Colors.grey)),
          Text('Jay!!',style: TextStyle( fontSize : 40,color : Colors.blue,fontWeight: FontWeight.bold)),
        ],
      ),*/
      );
  }
}
