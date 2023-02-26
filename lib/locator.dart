
import 'package:get_it/get_it.dart';
import 'package:weather_block/features/feature_weather/data/data_source/remote/api_provider.dart';
import 'package:weather_block/features/feature_weather/data/repository/weather_repositoryimpl.dart';
import 'package:weather_block/features/feature_weather/domain/repository/weather_repository.dart';
import 'package:weather_block/features/feature_weather/domain/usecases/get_current_weather_usecase.dart';
import 'package:weather_block/features/feature_weather/presentation/block/home_bloc.dart';

GetIt locatore = GetIt.instance ;


setup()
{
  locatore.registerSingleton<ApiProvider>(ApiProvider()) ;

  /// repositories
  locatore.registerSingleton<WeatherRepository>(WeatherRepositoryImpl(locatore()));

  /// usecases
  locatore.registerSingleton<GetCurrentWeatherUseCase>(GetCurrentWeatherUseCase(locatore())) ;

  ///blocs
  locatore.registerSingleton<HomeBloc>(HomeBloc(locatore()))  ;
}