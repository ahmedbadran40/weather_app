
import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';
import 'dart:core';
class WeatherServices
{
  Dio dio;
  WeatherServices(this.dio);
  final baseUrl='https://api.weatherapi.com/v1';
  final apiKey='98a42ede75a44523af7232950242506 ';
Future<WeatherModel>  getCurrentWeatherData({required String cityName})async
  {

      Response response = await dio.get(
          '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=3');
      try {
        dynamic jsonData = response.data;
        WeatherModel weatherModel = WeatherModel.fromJson(jsonData);
        return weatherModel;
      }
      on DioException catch(e){
        String errorMsg=e.response?.data['error']['message']??'There is Error, Try Later';
        throw Exception(errorMsg);
      }
      catch (e)
    {
      log(e.toString());
      throw Exception('There is Error, Try Later');
    }
    }


  }