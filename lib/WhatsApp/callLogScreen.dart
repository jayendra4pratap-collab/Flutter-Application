import 'package:flutter/material.dart';

class CallLogScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    return 
     Scaffold(
      appBar: AppBar(
        title: Text('Calls'),
        backgroundColor: Colors.green.shade200,
      ),
       body : Text('')
       /*Column(
         children: [
           Container(height : 50),
           Container(
             height : 50,
             color : Colors.green.shade200,
             child : Row(children: [
                  Text('  Calls',style : TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
             ],)
           
                 ),
         ],
       ),*/
    );
  }
}