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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  

  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  late Animation animation ;
  late AnimationController animationController;
  late Animation colorAnimation ; 

  @override
  void initState(){
    super.initState();
    animationController = AnimationController(vsync: this,duration : Duration(seconds : 6));
    animation =Tween(begin : 0.0,end : 200.0).animate(animationController);
    colorAnimation = ColorTween(begin :Colors.green , end : Colors.orange).animate(animationController);
    animationController.addListener((){
      print(animation.value);
      setState(() {
        
      });
    });
    
    animationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Beginner'),
      ),
      body: Center(
        child: Container(
          width :animation.value,
          height : 100,
          color : colorAnimation.value,
        ),
      )
      );
  }
}
