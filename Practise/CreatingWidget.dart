import 'package:flutter/material.dart';
import 'package:my_flutter_app/ui_helper/util.dart';
import 'package:my_flutter_app/widgets/round_btn.dart';

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
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text('Beginner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
               SizedBox(
                width : 100,
                child: RoundedButton(btnName: 'Play',
                icon : Icon(Icons.play_arrow),
                callBack : (){
                  debugPrint('Logged in!!');
                },
                textStyle: myTextStyle(),
                ),
              ),
              Container(height : 15),
              SizedBox(
                width : 100,
                child: RoundedButton(btnName: 'Press',
                bgColor: Colors.orange,
                
                textStyle: myTextStyle(),
                ),
              ),
            
          ],
        ),
      )
    );
  }
}
