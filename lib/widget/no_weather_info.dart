import 'package:flutter/material.dart';

import 'custom_head_text.dart';
class NoWeatherInfo extends StatelessWidget {
  const NoWeatherInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:CustomHeadText1(text: 'search on city',textColor: Colors.lightBlue,fontWeight: FontWeight.bold,),
    );
  }
}
