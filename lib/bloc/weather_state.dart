part of 'weather_bloc.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();
  @override
  List<Object> get props => [];
}

class WeatherIsNotSearched extends WeatherState {}

class WeatherIsLoading extends WeatherState {}

class WeatherIsNotLoaded extends WeatherState {}

class WeatherIsLoaded extends WeatherState {
  final _weather;
  WeatherIsLoaded(this._weather);

  WeatherModel get getWeather => _weather;
  @override
  List<Object> get props => [_weather];
}

class WeatherInitial extends WeatherState {
  @override
  List<Object> get props => [];
}
