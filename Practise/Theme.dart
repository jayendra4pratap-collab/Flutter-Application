import 'package:flutter/material.dart';
import 'package:my_flutter_app/ui_helper/util.dart';


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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        textTheme : TextTheme(
          headlineLarge :  TextStyle(fontSize:25,fontWeight: FontWeight.bold),
          
        )
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
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title:const Text('Beginner'),
      ),
      body: Column(
        children: [
          Text('Hello Jay',style :Theme.of(context).textTheme.headlineLarge!.copyWith(color : Colors.deepOrange),),
          Text('Hello Jay',style : TextStyle(fontSize:25,fontWeight: FontWeight.w300)),
          Text('Jayendra',style : myTextStyle(),),
        ],
      ),
            
      );
  }
}
