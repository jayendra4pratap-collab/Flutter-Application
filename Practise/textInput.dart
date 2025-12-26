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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
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

    var emailText = TextEditingController();
    var passText = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Beginner'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SizedBox(
            width : 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.phone,
                controller: emailText,
               // enabled: false,
                decoration : InputDecoration(
                  hintText: 'Enter email id',
                  focusedBorder : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color : Colors.green,
                      width :4,
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color : Colors.blueAccent,
                      width :4,
                    )
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color : Colors.grey,
                      width :4,
                    )
                  ),
                 // suffixText: "Username Exits",
                  suffixIcon: IconButton(
                     icon: Icon(Icons.remove_red_eye,color : Colors.deepOrangeAccent),
                     onPressed: (){
                       
                     },
                     ),
                  prefixIcon: Icon(Icons.email),  
                )
              ),
              Container ( height : 10),
              TextField(
                controller : passText,
                obscureText: true,
                obscuringCharacter: '*',
                decoration : InputDecoration(
                  hintText: "Enter password",
                  prefixIcon : Icon(Icons.lock),
                  border : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color : Colors.limeAccent,
                    )
                  )
                )
              ),
              Container(height : 8),
              ElevatedButton(onPressed: (){
                  String uEmail = emailText.text.toString();
                  String uPass = passText.text;

                  print("Email : $uEmail , Pass : $uPass");
              }, child: Text(
                'Login'
              ))
            ],
          ))),
      ),
      );
  }
}
