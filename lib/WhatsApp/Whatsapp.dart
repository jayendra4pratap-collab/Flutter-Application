import 'package:flutter/material.dart';

import 'MessageScreen.dart';
import 'callLogScreen.dart';
import 'splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'f_WhatsApp',
      debugShowCheckedModeBanner: false,
      
      home: SplashScreen(),
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
  var searchBar = TextEditingController();
  var arrNames = [
      'Raman ',
      'Jayendra',
      'GolLan',
      'Mayank',
      'Mridul',
      'Harry',
      'Rohit',
      'Satyam',
      'Uttam',
      'Krish',
      'Jyotir',
      'Ram',
      'Shyam',
      'Sita',
      'Radha'
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        
        children: [
          Container(height : 70),
          Container(
              height: 50,
              width: double.infinity,
              //color: Colors.green.shade100,
              child: Row(
                children: [
                  Container(
                    height: 50,
                    //color: Colors.yellow,
                    child: Text(' WhatsApp',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.green,
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(width: 60),
                  TextButton(onPressed: () {

                  }, child: Icon(Icons.qr_code)),
                  TextButton(
                      onPressed: () {

                      }, child: Icon(Icons.camera_alt_rounded)),
                  TextButton(
                      onPressed: () {
                         
                        
                      }, child: Icon(Icons.more_vert)),
                ],
              )
            ),
            
          TextField(
            controller: searchBar,
        
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey.shade300,
              prefixIcon: Icon(Icons.search),
              hintText: 'Ask Meta AI or Search',
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25),
              )
            ),
            keyboardType: TextInputType.text,

          ),
        
          Expanded(
            child: ListView.separated(
            
              itemBuilder: (context, index){
              return  TextButton(onPressed: (){
                
                Navigator.push(context,MaterialPageRoute(builder: (context) => MessageScreen()));
              },
                child: ListTile(

                  leading: Icon(Icons.person),
                  title : Text(arrNames[index]),
                  subtitle: Text('recent message'),
                  
                 // trailing: Icon(Icons.numbers_rounded),
                 ),
              );
            },
            
            itemCount: arrNames.length,
            separatorBuilder :(context, index){
               return SizedBox.shrink();
               }
              ),
          ),
          Container(
            
            height : 50,
            padding: EdgeInsets.only(top : 10),
           // color: Colors.green,
            child : Row(
              
               children: [
                SizedBox(width: 20),
                TextButton(onPressed: (){

                }, child: Icon(Icons.chat)),
                SizedBox(width: 40),
                TextButton(onPressed: (

                ){

                }, child: Icon(Icons.update)),
                SizedBox(width: 40),
                TextButton(onPressed: (){

                }, child: Icon(Icons.person_search)),
                SizedBox(width: 40),
                TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> CallLogScreen()));
                }, child: Icon(Icons.call)),
               ]
            )),
            Container(
              height: 60,
              padding: EdgeInsets.only(bottom: 30),
              //color : Colors.amberAccent,
                child: Row(
                
                children:[
                SizedBox(width: 30),
                Text('Chats',style : TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                SizedBox(width: 40),
                Text('Updates',style : TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                SizedBox(width: 20),
                Text('Communities',style : TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                SizedBox(width: 20),
                Text('Calls',style : TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
              ],),)
        ],
      ),
    );
  }
}
