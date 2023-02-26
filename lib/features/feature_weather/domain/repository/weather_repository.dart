

import 'package:weather_block/core/resources/data_state.dart';
import 'package:weather_block/features/feature_weather/domain/entities/current_city_entity.dart';

abstract class WeatherRepository{


  Future<DataSate<CurrentCityEntity>> fetchCurrentWeatherData(String cityName) ;

}