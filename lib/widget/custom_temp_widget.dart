import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_head_text.dart';

class CustomTempWidget extends StatelessWidget {
   CustomTempWidget({Key? key,required this.text,required this.temp}) : super(key: key);
String text;
double temp;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:BorderRadius.circular(10),
            boxShadow: [BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              blurStyle: BlurStyle.solid,
              offset: Offset(3,5)
            )]
        ),
        padding: EdgeInsets.all(10),
        child: CustomHeadText1(text: '$text:$temp',fontSize: 30,),
      ),
    );
  }
}
