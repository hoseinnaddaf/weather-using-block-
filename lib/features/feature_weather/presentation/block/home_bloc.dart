import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_block/core/resources/data_state.dart';
import 'package:weather_block/features/feature_weather/presentation/block/cw_status.dart';

import '../../domain/usecases/get_current_weather_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final GetCurrentWeatherUseCase getCurrentWeatherUseCase  ;

  HomeBloc(this.getCurrentWeatherUseCase) : super(HomeState(cwStatus: CwLoading()))
  {
    on<LoadCwEvent>((event, emit) async
    {

      emit(state.copyWith(newCwStatus: CwLoading())) ;

      DataSate dataSate = await getCurrentWeatherUseCase(event.CityName) ;

      if(dataSate is DataSuccess)
      {
        emit(state.copyWith(newCwStatus: CwCompleted(dataSate.data))) ;
      }

      if(dataSate is DataFailed)
      {
        emit(state.copyWith(newCwStatus: CwError(dataSate.error!))) ;
      }

    });
  }
}
