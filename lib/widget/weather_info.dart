import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/utlis/app_utlis.dart';
import 'custom_head_text.dart';
import 'custom_temp_widget.dart';
import 'custum_more_detalis.dart';
class WeatherInfo extends StatelessWidget {
   const WeatherInfo({super.key});
  @override
  Widget build(BuildContext context) {
    final weatherModel=BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return  SafeArea(
      child: Container(
        decoration: BoxDecoration(

          gradient:LinearGradient(
              begin:Alignment.topCenter,
              end: Alignment.bottomLeft,
             colors:[AppUtills.getColor(weatherModel?.weatherState)[50]!,
              AppUtills.getColor(weatherModel?.weatherState)[500]!,
              AppUtills.getColor(weatherModel?.weatherState)[900]!
              ]
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHeadText1(text: weatherModel!.cityName,fontSize: 45,fontWeight: FontWeight.bold,),
              CustomHeadText1(text: 'Status:${weatherModel.weatherState}',fontSize: 40,),
              Container(
                  alignment: Alignment.center,
                  child: Image(
                    image: NetworkImage('https:${weatherModel.image}'),width: 250,height: 250,)),

              Container(
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                   color: Colors.white,
                     boxShadow: [
                       BoxShadow(
                       blurRadius: 8,blurStyle:BlurStyle.inner,
                       color: Colors.grey,
                       offset:Offset(3,6)
                     ),

                     ]
                ),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomHeadText1(text:weatherModel.temp.toString(),  fontSize: 100,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomHeadText1(text: 'date: ${weatherModel.date.day} - ${weatherModel.date.month} - ${weatherModel.date.year}',fontSize: 22,),
                        CustomHeadText1(text:'lasted updated:${weatherModel.date.hour}:${weatherModel.date.minute}',fontSize: 22,),

                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  CustomTempWidget(text: 'min',temp: weatherModel.minTemp,),
                  const SizedBox(width: 20,),
                  CustomTempWidget(text: 'max',temp: weatherModel.maxTemp,),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustumMoreDetalis(name: 'wind',icon: Icons.wind_power,value: weatherModel.wind.toDouble(), unit: 'km/h',),
                    CustumMoreDetalis(name: 'Humidity',icon: Icons.water_drop_rounded,value: weatherModel.humidity.toDouble(), unit: '%',),
                    CustumMoreDetalis(name: 'Cloud',icon: Icons.water_drop_rounded,value: weatherModel.cloud.toDouble(), unit: '%',),



                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

