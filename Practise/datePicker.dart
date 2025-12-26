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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Select Date",
              style : TextStyle(fontSize : 25),
            ),
            ElevatedButton(onPressed: () async {
              DateTime? datePicked = await showDatePicker(
                context: context,
                firstDate: DateTime(2000),
                lastDate: DateTime(2026)
                );

                if(datePicked!=null){
                  print('Date selected : ${datePicked.day}-${datePicked.month}-${datePicked.year}');
                }
            }, child: Text('Show Date')),
            Container( height : 5 ),
            ElevatedButton(onPressed: () async {
                TimeOfDay? pickedTime= await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),  
                initialEntryMode : TimePickerEntryMode.dial
                );

                if(pickedTime!=null){
                  print('Time selected : ${pickedTime.hour} : ${pickedTime.minute}');
                }
            }, child: Text('Show Time')),
          ],
        ),
      ),
      );
  }
}
