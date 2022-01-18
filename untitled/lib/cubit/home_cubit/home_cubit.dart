import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:untitled/models/homemodel.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  Future<void> api_home() async {
    emit(HomeLoading());
    var res = await http.get(Uri.parse(
        "https://run.mocky.io/v3/b4bca197-14ae-45fd-b4a5-6d8f9df79f57"));
    if (res.statusCode == 200) {
      var data = json.decode(res.body);
      home objhome = home.fromJson(data);

      emit(HomeSuccess(objhome));
    } else {
      emit(HomeFailed("failed"));
    }
  }
}
