import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  var nameController =TextEditingController();
  

  @override 
  void initState(){
    super.initState();
    getValue();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Shared Pref'),
      ),
      body: Container(
        child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  label: Text('Name'),
                  border : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
              ),
              ElevatedButton(onPressed: ()async{
                  var name =nameController.text.toString();

                  var prefs = await SharedPreferences.getInstance();

                  prefs.setString("name",name);
              }, child: Text('Save')),
              SizedBox(height: 10),
              Text('Saved Value'),
            ],
        )
      ),
      );
  }
}

void getValue()async {
    var prefs =await SharedPreferences.getInstance();
    prefs.getString("name");
}
