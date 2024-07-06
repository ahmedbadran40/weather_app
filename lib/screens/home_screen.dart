import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/screens/search_screen.dart';
import 'package:weather_app/widget/weather_info.dart';
import '../widget/no_weather_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(
        onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (_)=>SearchScreen()));
      },child: Icon(Icons.search),),
       body:BlocBuilder <GetWeatherCubit,WeatherState>(
         builder: (BuildContext context, state)
         {
           if(state is NoWeatherState)
             {
               return NoWeatherInfo();
             }else if (state is WeatherSuccessState)
               {
                 state.weatherModel;
                 return WeatherInfo();

               }
           else{
             return Text('there is try later');
           }
         },)
    );
  }
}
