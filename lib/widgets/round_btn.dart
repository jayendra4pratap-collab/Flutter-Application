import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget{

  final String btnName;
    final Icon? icon;
    final Color bgColor;
    final TextStyle? textStyle;
    final VoidCallback? callBack;

  const RoundedButton({super.key, required this.btnName,     //Constructor
    this.icon,
    this.bgColor=Colors.blue,
    this.textStyle,
    this.callBack});


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      callBack!();
    },
      style : ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shadowColor : bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight : Radius.circular(25),
            bottomLeft: Radius.circular(25)
          )
        )
      ), child: icon!=null?Row(
      children: [
        icon!,
        Text(btnName,style : textStyle,)
      ],
    ):Text(btnName,style : textStyle)
    );
    
  }
}