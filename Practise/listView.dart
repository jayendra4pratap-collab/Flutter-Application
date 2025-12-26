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
      var names=['Raman ','Jay','Krish','Mayank','Mridul','Harry','Rohit'];



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Begginer'),
      ),
      body: 
      
      
      ListView.separated(itemBuilder: (context , index){
        return Text (names[index],style : TextStyle(fontSize : 25 , fontWeight : FontWeight.w500));
      } ,
      itemCount : names.length ,
      //itemExtent:150,
      //scrollDirection: Axis.horizontal,
      separatorBuilder: (context,index){
        return Divider(height: 100,thickness: 5);
      },
      )
      
       /*Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView( 
          scrollDirection: Axis.horizontal,
          reverse : false,
          children : [ 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('ONE', style : TextStyle(fontSize : 25,fontWeight : FontWeight.w700),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('TWO', style : TextStyle(fontSize : 25,fontWeight : FontWeight.w700),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('THREE', style : TextStyle(fontSize : 25,fontWeight : FontWeight.w700),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('FOUR', style : TextStyle(fontSize : 25,fontWeight : FontWeight.w700),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('FIVE', style : TextStyle(fontSize : 25,fontWeight : FontWeight.w700),),
            ),
          ],
        ),
      )*/
      );
  }
}
