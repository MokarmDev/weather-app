import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';

import '../../models/weather_model.dart';
import '../../services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherStateInitial());

  getWeatherCurrent() async {
    try {
      WeatherModel? weatherModel =
          await WeatherService().getCurrentWeather(cityName: 'sanaa');
      emit(WeatherStateLoaded());
    } catch (e) {
      emit(WeatherStateFailure());
    }
  }
}
