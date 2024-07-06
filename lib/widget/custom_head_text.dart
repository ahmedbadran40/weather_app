import 'dart:ui';

import 'package:flutter/material.dart';
class CustomHeadText1 extends StatelessWidget {
   CustomHeadText1({Key? key,required this.text,this.fontSize=50,this.fontWeight=FontWeight.normal,this.textColor=Colors.black}) : super(key: key);
String text;
double fontSize;
FontWeight fontWeight;
Color textColor;
  @override
  Widget build(BuildContext context) {
    return  Text(text,
      style: TextStyle(
          fontFamily: 'Roboto',
          color: textColor,
          fontSize:fontSize,
        fontWeight:fontWeight
      ),
    );
  }
}
