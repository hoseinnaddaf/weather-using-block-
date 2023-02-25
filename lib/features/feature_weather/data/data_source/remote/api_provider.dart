

import 'package:dio/dio.dart';
import 'package:weather_block/core/utils/constants.dart';

class ApiProvider{

  Dio dio = Dio() ;
  var apiKey = Consonants.apiKey_owm ;


  ///api for  get current weather detail
  Future<dynamic> callCurrentWeather(cityName ) async
  {
    var response =await  dio.get(
        "${Consonants.baseUrl}data/2.5/weather" ,
        queryParameters: {
            'q' : cityName ,
            'appid':apiKey ,
            'units':'metric'
            }
    );

    print(response.data) ;

    return response ;
  }

}