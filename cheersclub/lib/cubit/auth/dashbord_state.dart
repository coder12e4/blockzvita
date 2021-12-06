part of 'dashbord_cubit.dart';

@immutable
abstract class DashbordState {}

class DashbordInitial extends DashbordState {}

class DashbordLoading extends DashbordState {}

//my orders
class DashbordLoadingMyorders extends DashbordState {}

class DashbordLoadingMyordersSucssellfull extends DashbordState {
  final List<MyGreetings> ordersListdata;

  DashbordLoadingMyordersSucssellfull(this.ordersListdata);
}

class DashbordLoadingMyordersFail extends DashbordState {
  final String error;
  DashbordLoadingMyordersFail(this.error);
}

//my greetings
class DashbordMyGreetingsLoading extends DashbordState {}

class DashbordMyGreetingsSuccessFull extends DashbordState {
  final List<MyGreetings> ordersListdata;

  DashbordMyGreetingsSuccessFull(this.ordersListdata);
}

class DashbordMyGreetingsFail extends DashbordState {
  final String error;

  DashbordMyGreetingsFail(this.error);
}

//my Profile

class DashbordMyProfileLoading extends DashbordState {}

class DashbordMyProfileSuccessFull extends DashbordState {
  final User user;
  DashbordMyProfileSuccessFull(this.user);
}

class DashbordMyProfileFail extends DashbordState {}

class DashbordchangePasswordLoading extends DashbordState {}

class DashbordchangePasswordSuccessFull extends DashbordState {}

class DashbordchangePasswordFail extends DashbordState {
  final String message;

  DashbordchangePasswordFail(this.message);
}
