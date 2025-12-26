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
      body: Center(
         
          //height : 100,
          //width : 100,
          child: CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 122, 244, 126),
            maxRadius : 50,
            child : Container(
              height : 200,
              width : 200,
              child: Column(
                children : [
                  Container(
                       width :70,
                       height : 70,
                       child : Image.asset('assets/images/BoyLogo.png'),
                    ),
                    Text("Name")
                ],
              ),
            ),
          
        ),
      ),
      );
  }
}
