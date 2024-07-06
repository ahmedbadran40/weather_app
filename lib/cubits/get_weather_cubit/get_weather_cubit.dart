import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/models/weather_model.dart';

import '../../screens/search_screen.dart';
import '../../servises/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherState>{
  GetWeatherCubit():super (NoWeatherState()) ;
 WeatherModel? weatherModel;

 getWeather(String cityName)async {
   try {
   weatherModel = await WeatherServices(Dio())
         .getCurrentWeatherData(cityName: cityName);
     emit(WeatherSuccessState(weatherModel!));
   }
   catch(e){
     emit(NoWeatherErrorState(e.toString()));
   }
 }
}