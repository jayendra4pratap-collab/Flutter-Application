import 'package:flutter/material.dart';

import 'CalSplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'f_Calulator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
      home: CalSplashScreen(),
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
  var textInput = TextEditingController();
  var calculate = 0.0;
  var num1 = 0.0;
  var num2 = 0.0;
  var operator = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: TextField(
              controller: textInput,
              expands: true,
              maxLines: null,
              readOnly: true,
              style: TextStyle(fontSize: 65),
              cursorColor: Colors.green,
              cursorHeight: 70,
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ),
          Container(
            height: 50,
            //color: Colors.pink.shade100,
            child: Align(
                alignment: AlignmentGeometry.centerRight,
                child: Text(
                  '$calculate',
                  style: TextStyle(fontSize: 45, color: Colors.grey),
                )),
          ),
          Container(height: 15),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                'AC',
                '%',
                'X',
                '/',
                '7',
                '8',
                '9',
                '*',
                '4',
                '5',
                '6',
                '-',
                '1',
                '2',
                '3',
                '+',
                '-/+',
                '0',
                '.',
                '='
              ].map(
                (text) {
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (text == 'AC') {
                              textInput.clear();
                              calculate = 0.0;
                              num1 = 0;
                              num2 = 0;
                              operator = '';
                            } else if (text == '+' ||
                                text == '-' ||
                                text == '/' ||
                                text == '*') {
                              if (textInput.text.isEmpty) return;

                              operator = text;
                              textInput.text += text;
                            } else if (text == '=') {
                              if (operator.isEmpty) return;

                              List<String> parts =
                                  textInput.text.split(operator);
                              //if(parts.length!=2)
                              //return ;

                              num1 = double.parse(parts[0]);
                              num2 = double.parse(parts[1]);
                              if (operator == '+') {
                                calculate = num1 + num2;
                              } else if (operator == '-') {
                                calculate = num1 - num2;
                              } else if (operator == '*') {
                                calculate = num1 * num2;
                              } else {
                                calculate = num1 / num2;
                              }
                              operator = '';
                              textInput.text = calculate.toString();
                            } else if (text == 'X') {
                              if (textInput.text.isEmpty) return;
                              textInput.text = textInput.text
                                  .substring(0, textInput.text.length - 1);
                              textInput.selection = TextSelection.fromPosition(
                                  TextPosition(offset: textInput.text.length));
                            } else if (text == '-/+') {
                            } else {
                              textInput.text += text;
                            }
                          });
                        },
                        child: Text(text, style: TextStyle(fontSize: 25))),
                  );
                },
              ).toList(),
            ),
          )
        ],
      ),
    );
  }
}
