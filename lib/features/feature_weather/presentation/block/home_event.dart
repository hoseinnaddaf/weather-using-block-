part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

///CW : current weather
class LoadCwEvent extends HomeEvent{

  final String CityName ;

  LoadCwEvent(this.CityName);
}