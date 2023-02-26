
import 'package:weather_block/core/usecase/use_case.dart';
import 'package:weather_block/features/feature_weather/domain/repository/weather_repository.dart';

import '../../../../core/resources/data_state.dart';
import '../entities/current_city_entity.dart';

class GetCurrentWeatherUseCase extends UseCase<DataSate<CurrentCityEntity> , String>{

  final WeatherRepository weatherRepository ;

  GetCurrentWeatherUseCase(this.weatherRepository);

  @override
  Future<DataSate<CurrentCityEntity>> call(String param) {
    return weatherRepository.fetchCurrentWeatherData(param) ;
  }

}