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
  var arrData = [
    {'name':'Jay', 'mobno' : '8796940910', 'unread': '4'},
    {'name': 'Prashesh', 'mobno' : '8796940910', 'unread': '3'},
    {'name':'Arjun', 'mobno' : '8796940910','unread':  '1'},
    {'name':'Shivanshu', 'mobno' : '8796940910','unread':  '4'},
    {'name':'Mayank', 'mobno' : '8796940910', 'unread': '7'},
    {'name':'Gollan', 'mobno' : '8796940910', 'unread': '4'},
    {'name':'Mridul','mobno' :  '8796940910', 'unread': '6'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Beginner'),
      ),
      body: Container(
        child: ListView(
            children: arrData.map((value)=> 
            
            ListTile(
              leading: Icon(Icons.account_circle),
              title : Text(value['name'].toString()),
              subtitle: Text(value['mobno'].toString()),
              trailing : CircleAvatar(child: Text(value['unread'].toString())),
            ),
            /* {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Center(child: Text(value)),
              ),
            ),
          );
        }*/).toList()),
      ),
    );
  }
}
