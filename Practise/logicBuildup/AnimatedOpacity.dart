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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  var _opacity =1.0;
  var flag =true;
  var bgColor = Colors.amberAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('AnimatedOpacity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(opacity: _opacity,
           // curve: Curves.bounceInOut,
             duration: Duration(seconds: 2),
             child: Container(
              width : double.infinity,
              height : 100,
              color : bgColor,
             )),
        
             ElevatedButton(onPressed: (){
                if(flag)
                {
                  _opacity=0.0;
                  bgColor =Colors.greenAccent;
                  flag=false;
                }else{
                  _opacity=1.0;
                  bgColor =Colors.blueAccent;
                   flag=true;
                }
                setState(() {
                  
                });
                
            
             }, child: Text('Click'))
             
          ],
        ),
      ),
      );
  }
}
