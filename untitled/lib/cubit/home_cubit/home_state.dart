part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {
  home objhome;
  HomeSuccess(this.objhome);
}

class HomeFailed extends HomeState {
  String fail_massage;
  HomeFailed(this.fail_massage);
}
