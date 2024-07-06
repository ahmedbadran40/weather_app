import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/utlis/app_utlis.dart';


import '../screens/home_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>GetWeatherCubit(),
      child:  BlocBuilder<GetWeatherCubit,WeatherState>(
        builder: (context,state) {
          return MaterialApp(
            theme:ThemeData(
                primarySwatch:AppUtills.getColor(BlocProvider.of<GetWeatherCubit>(context).weatherModel?.weatherState)
            ),
            debugShowCheckedModeBanner: false,
            home: const HomeScreen(),

          );
        }
      )
    );
  }
}
