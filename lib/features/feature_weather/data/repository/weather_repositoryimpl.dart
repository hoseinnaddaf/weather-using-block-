
import 'package:dio/dio.dart';
import 'package:weather_block/core/resources/data_state.dart';
import 'package:weather_block/features/feature_weather/data/data_source/remote/api_provider.dart';
import 'package:weather_block/features/feature_weather/data/models/current_city_model.dart';
import 'package:weather_block/features/feature_weather/domain/entities/current_city_entity.dart';
import 'package:weather_block/features/feature_weather/domain/repository/weather_repository.dart';

class WeatherRepositoryImpl extends WeatherRepository{

  ApiProvider  apiProvider ;

  WeatherRepositoryImpl(this.apiProvider) ;

  @override
  Future<DataSate<CurrentCityEntity>> fetchCurrentWeatherData(String cityName) async
  {

    try{
       Response response =  await apiProvider.callCurrentWeather(cityName) ;

       if(response.statusCode == 200)
       {
         CurrentCityEntity currentCityEntity = CurrentCityModel.fromJson(response.data) ;
         return DataSuccess(currentCityEntity);
       }
       else
       {
          return DataFailed("something went wrong . plz try again...") ;
       }
    }
    catch(e)
    {
      return DataFailed("there are a problem in try :  $e") ;
    }

  }



}