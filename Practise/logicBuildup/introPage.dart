import 'package:flutter/material.dart';

import 'SwitchScreen.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Intro'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Center(
          child: Column(
             
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Text("Welcome",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () 
                  {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage(title: '',),
                        ));
                  },
                  child: Text('Next'))
            ],
          ),
        ));
  }
}
