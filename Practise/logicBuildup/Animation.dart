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
   var _width = 400.0;
   var _height = 100.0;
   bool flag=true;
   var bgColor = Colors.amberAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Foo Animation'),
      ),
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              color : bgColor,
              duration: Duration(seconds: 3) ,
              curve: Curves.slowMiddle,
              width : _width ,
              height : _height),
              
            ElevatedButton(onPressed: (){
              if(flag){
                 bgColor= Colors.greenAccent;
                _width = 100.0;
                _height =200.0;
               
                flag =false;
              }else{
                _width = 400.0;
                bgColor = Colors.amberAccent;
               _height = 100.0;
               flag =true;
              }
                setState(() {
                  
                });
            }, child: Text('Animate'))
          ],
        ),
      ),
      );
  }
}
