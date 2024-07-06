import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/widget/custom_head_text.dart';

class SearchScreen extends StatelessWidget {
   SearchScreen({super.key});
TextEditingController searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: CustomHeadText1(text: 'Search',fontSize: 25,),
     ),
      body: Center(
        child:Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: searchController,
            onChanged: (value){},
            onSubmitted: (value){
           var weatherCubit= BlocProvider.of<GetWeatherCubit>(context);
           weatherCubit.getWeather(value);
            Navigator.pop(context);
            },
            decoration: InputDecoration(
              focusedBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.5
                )
              ),
              hintText: 'Search on your city',
              label: CustomHeadText1(text: 'Search',fontSize: 20,),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.5
                  )
              )
            ),
          ),
        ),
      ),
    );
  }
}
