class WeatherModel{
 WeatherModel({required this.cityName, required this.date,   this.image,required this.temp,required this.minTemp,
   required   this.maxTemp,required this.weatherState,required this.wind,required this.humidity,required this.cloud});
 final String cityName;
 final DateTime date;
 final String? image;
 final double temp;
 final  double minTemp;
 final  double maxTemp;
 final String weatherState;
 final double wind;
 final  int humidity;
 final  int cloud;

 factory WeatherModel.fromJson(json){
  return WeatherModel(
      cityName: json['location']['name'],
      date:DateTime.parse( json["current"]['last_updated']),
      image: json["current"]["condition"]['icon'],
      temp: json['forecast']["forecastday"][0]['day']['avgtemp_c'],
      minTemp:  json['forecast']["forecastday"][0]['day']['mintemp_c'],
      maxTemp:json['forecast']["forecastday"][0]['day']['maxtemp_c'],
      weatherState: json['forecast']["forecastday"][0]['day']['condition']['text'],
      humidity:json["current"]['humidity'],
      cloud: json["current"]['cloud'],
      wind:  json["current"]['wind_kph'],
  );
 }
}
