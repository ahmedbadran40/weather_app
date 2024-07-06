import 'package:weather_app/models/weather_model.dart';

class WeatherState{}
class NoWeatherState extends WeatherState{}

class WeatherSuccessState extends WeatherState{
  final WeatherModel weatherModel;

  WeatherSuccessState(this.weatherModel);
}

class NoWeatherErrorState extends WeatherState{
  final String error;

  NoWeatherErrorState(this.error);
}

