import 'package:flutter/material.dart';
import 'package:my_flutter_app/ui_helper/util.dart';
import 'package:intl/intl.dart';

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

    var time =  DateTime.now();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Beginner'),
      ),
      body: Center( 
        child: SizedBox(
          width : 250,
          height : 200,
          child: Column(
             mainAxisAlignment : MainAxisAlignment.center,
            children: [
              Text("Current time : ${DateFormat('yMMMMEEEEd').format(time)}",style : myTextStyle()),
              ElevatedButton(onPressed: (){
                setState(() {
                  
                });
              },
               child: Text('Current Time'))
            ],
          ),
        ),
      ),
      );
  }
}
