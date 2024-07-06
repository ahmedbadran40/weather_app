import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom_head_text.dart';

class CustumMoreDetalis extends StatelessWidget {
   CustumMoreDetalis({required this.name,required this.icon, required this.value,required this.unit});
String name;
IconData icon;
double value;
String unit;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [BoxShadow(
          blurRadius: 5,
        blurStyle: BlurStyle.inner,
          offset: Offset(3,5),



        )]


      ),
      child: Column(
        children: [
          CustomHeadText1(text: name, fontSize: 20,fontWeight: FontWeight.bold,),
          Icon(icon),
          CustomHeadText1(text: "$value $unit",fontSize: 20, )
        ],
      ),
    );
  }
}
