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
    var arrColors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.orange,
      Colors.yellow,
      Colors.black,
      Colors.purple,
      Colors.pink,
      Colors.indigo,
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Beginner'),
      ),
      body: GridView.builder(itemBuilder: (context , index){
        return Container(color : arrColors[index],);
      },itemCount : arrColors.length,gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent : 100,
       // crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10),
        ),
    
       /*Column(
        children: [
          Container(
            height : 200,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                Container(color: arrColors[0]),
                Container(color: arrColors[1]),
            
                Container(color: arrColors[2]),
                Container(color: arrColors[3]),
            
                Container(color: arrColors[4]),
                Container(color: arrColors[5]),
            
                Container(color: arrColors[6]),
                Container(color: arrColors[7]),
                Container(color: arrColors[8]),
              ],
            ),
          ),
        

        Container(height: 100),

        Container(
          height : 200,
          child: GridView.extent(
            maxCrossAxisExtent: 150,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          
            children: [
              Container(color: arrColors[0]),
              Container(color: arrColors[1]),
          
              Container(color: arrColors[2]),
              Container(color: arrColors[3]),
          
              Container(color: arrColors[4]),
              Container(color: arrColors[5]),
          
              Container(color: arrColors[6]),
              Container(color: arrColors[7]),
              Container(color: arrColors[8]),
            ],
          ),
        ),
        ],
      ),*/
    );
  }
}
