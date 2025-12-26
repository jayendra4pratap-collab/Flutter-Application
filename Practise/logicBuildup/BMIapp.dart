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
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  var result ="";
  var bgColor=Colors.blue.shade200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Your BMI'),
      ),
      body: Container(
        color : Colors.blue.shade200,
        child: Center(
          child: Container(
            width :300,
            color: bgColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text('BMI',style : TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
                TextField(
                    controller: wtController,
                    decoration: InputDecoration(
                      label : Text('Enter your weight(in Kgs)'),
                      prefixIcon: Icon(Icons.line_weight)
                    ),
                    keyboardType: TextInputType.numberWithOptions(       ),
            
                ),
                SizedBox(height : 15),
                TextField(
                    controller: ftController,
                    decoration: InputDecoration(
                      label : Text('Enter your height(in feet)'),
                      prefixIcon: Icon(Icons.height_rounded)
                    ),
                    keyboardType: TextInputType.numberWithOptions(       ),
            
                ),
                SizedBox(height : 10),
                TextField(
                    controller: inController,
                    decoration: InputDecoration(
                      label : Text('Enter your height(in inch)'),
                      prefixIcon: Icon(Icons.height)
                    ),
                    keyboardType: TextInputType.numberWithOptions(       ),
            
                ),
                Container(height: 10),
                ElevatedButton(onPressed: (){
                  var ft=ftController.text.toString();
                  var inch=inController.text.toString();
                  var wt=wtController.text.toString();
        
                  if(wt!=""&&ft!=""&&inch!="")
                  {
                    var iwt=int.parse(wt);
                    var ift=int.parse(ft);
                    var iin=int.parse(inch);
                    var totalInch = ift*12 + iin;
                    var totalCm = totalInch*2.54;
                    var tm = totalCm/100;
        
                    var bmi  = iwt/(tm*tm);

                    var msg="";
                    if(bmi<18){
                        msg="You are UnderWeight!!";
                       // bgColor =Colors.orange;
                    }

                    else if(18<=bmi&&bmi<=25){
                          msg="You are healthy!!";
                       // bgColor =Colors.green;
                    }

                    else
                    {
                        msg="You are OverWeight!!";
                       // bgColor =Colors.redAccent;
                    }

                    
                    setState(() {
                      result = "$msg \nYour BMI is ${bmi.toStringAsFixed(2)}";
                    });
                    
                  }else{
                    setState(() {
                        result ="Please fill all the required blanks!!";
                         bgColor =Colors.blue.shade200;
                     });
                    
                  }
                     
                }, child: Text('Calculate')),
                SizedBox(height : 20),
                Text(result,style : TextStyle(fontSize: 25)),
              ],
            ),
          ),
        ),
      ),
      );
  }
}
