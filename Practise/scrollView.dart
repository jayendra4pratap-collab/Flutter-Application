import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Beginner'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
               Padding(
                padding : const EdgeInsets.all(15),
                child : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                child: Row(
                  
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      height: 200,
                      width: 200,
                      color: Colors.orangeAccent,
                    ),
                
                
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      height: 200,
                      width: 200,
                      color: Colors.black,
                    ),
                
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      height: 200,
                      width: 200,
                      color: Colors.green,
                    ),
                  ]
                  ),
                  
                ),
              ),

                  Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    width: 200,
                    color: Colors.blueAccent,
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    width: 200,
                    color: Colors.green,
                  ),

                   Container(
                      margin: EdgeInsets.only(bottom: 15),
                      height: 200,
                      width: 200,
                      color: Colors.orangeAccent,
                    ),
                
                
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      height: 200,
                      width: 200,
                      color: Colors.black,
                    ),
                
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      height: 200,
                      width: 200,
                      color: Colors.green,
                    ),
                ],

          ),
        ),
      ),
    );
  }
}
