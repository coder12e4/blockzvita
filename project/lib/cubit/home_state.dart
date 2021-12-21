part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class Home_IncrementClicked extends HomeState {}

class Home_IncrementClickedSuccess extends HomeState {
  final int value;

  Home_IncrementClickedSuccess(this.value);
}

class Home_IncrementClickedFail extends HomeState {}
