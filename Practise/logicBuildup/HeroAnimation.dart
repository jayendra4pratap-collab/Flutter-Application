import 'package:flutter/material.dart';

import 'HeroExtend.dart';

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
      home: MyHomePage(title: ''),
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
        title: Text('HeroAnimation'),
      ),
      body: Container(
        child : Center(
          child : InkWell(
             onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage()));
             },
            child: Hero(tag: 'Logo', 
                         child: Image.asset('assets/images/logo.jpeg',width: 200,height : 200)),
          ),
        )
      ),
      );
  }
}
