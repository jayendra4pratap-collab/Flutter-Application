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
  var controller1 = TextEditingController();
  var controller2 =TextEditingController();
  var result='Result';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Beginner'),
      ),
      body: Container(
        color : Colors.blue.shade50,
        child : Center(
        
          child : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: controller1,
              ),
              TextField(
                controller: controller2,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment :MainAxisAlignment.spaceEvenly,
                  children: [
                  ElevatedButton(onPressed: (){

                        var no1= int.parse( controller1.text.toString());
                        var no2= int.parse( controller2.text.toString());
                        var sum=no1+no2;
                        result = "Sum of $no1 and $no2 is $sum";

                        setState((){});


                  }, child: Text('Add')),
                  ElevatedButton(onPressed: (){
                       var no1= int.parse( controller1.text.toString());
                        var no2= int.parse( controller2.text.toString());
                        var diff=no1-no2;
                        result = "Difference of $no1 and $no2 is $diff";

                        setState((){});

                  }, child: Text('Sub')),
                  ElevatedButton(onPressed: (){
                      var no1= int.parse( controller1.text.toString());
                        var no2= int.parse( controller2.text.toString());
                        var diff=no1*no2;
                        result = "Product of $no1 and $no2 is $diff";

                        setState((){});

                  }, child: Text('Multi')),
                  ElevatedButton(onPressed: (){
                    var no1= int.parse( controller1.text.toString());
                        var no2= int.parse( controller2.text.toString());
                        var diff=no1/no2;
                        result = "Division of $no1 and $no2 is ${diff.toStringAsFixed(2)}";

                        setState((){});
                  }, child: Text('Div')),
                ],),
              ),
              Padding(padding: EdgeInsets.all(20),
                child : Text('$result : ',style: TextStyle(fontSize: 25),),)
            ],),
          )
        )
      ),
      );
  }
}
