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
        backgroundColor: Colors.blue,
        title: const Text('Beginner'),
      ),
      body: Container(
        child : Column(
          children: [
            
            CatItem(),
            
            Expanded(
              flex : 3,
              child: Container(
                height : 200,
                color: Colors.pink,
              ),
            ),
            //CatItem(),
            Expanded(
              
              flex : 4,
              child: Container(
                height : 200,
                color: Colors.grey,
              ),
            )
            

          ],
        )
      )
      );
  }
}

class CatItem extends StatelessWidget{
  const CatItem({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
              flex: 2,
              child: Container(
                height : 200,
                color: Colors.green,
                child : ListView.builder(itemBuilder: (context,index) => Padding(
                  padding : const EdgeInsets.all(11.0),
                  child : SizedBox(
                    width : 100,
                    child : CircleAvatar(
                      backgroundColor: Colors.blue , 
                    
                    ),
                    ),
                  ),itemCount: 10,scrollDirection: Axis.horizontal),
                
              ),
            );
  }
}