import 'package:bloc/bloc.dart';
import 'package:cheersclub/cubit/auth/Retourents/OrdersListFunction.dart';
import 'package:cheersclub/cubit/repository/dashbordRepository.dart';
import 'package:cheersclub/models/Restourent/MyGreetings.dart';
import 'package:cheersclub/models/auth/user.dart';
import 'package:meta/meta.dart';
import 'package:result_type/result_type.dart';

part 'dashbord_state.dart';

class DashbordCubit extends Cubit<DashbordState> {
  DashbordCubit(this.dashBordRepository) : super(DashbordInitial());
  final DashBordRepository dashBordRepository;

  Future<void> UserProfileloading() async {
    emit(DashbordMyProfileLoading());
    Result? result = await dashBordRepository.UserProfile();
    if (result.isSuccess) {
      User user = User(
        id: result.success["id"],
        name: result.success["name"],
        email: result.success["email"],
        contactPerson: result.success["contactPerson"],
        isCompany: result.success["isCompany"],
        address: result.success["address"],
        city: result.success["city"],
        zip: result.success["zip"],
        country: result.success["country"],
        profilePhotoUrl: result.success["profilePhotoUrl"],
        followers: result.success["followers"],
        followings: result.success["followings"],
      );

      emit(DashbordMyProfileSuccessFull(user));
    } else {
      emit(DashbordMyProfileFail());
    }
  }

  Future<void> UserProfileupdate(String name, String address, String phone,
      String zip, String city, String country) async {
    emit(DashbordMyProfileLoading());
    Result? result = await dashBordRepository.UserProfileUpdate(
        name, address, phone, zip, city, country);
    if (result.isSuccess) {
      User user = User(
        id: result.success["id"],
        name: result.success["name"],
        email: result.success["email"],
        contactPerson: result.success["contactPerson"],
        isCompany: result.success["isCompany"],
        address: result.success["address"],
        city: result.success["city"],
        zip: result.success["zip"],
        country: result.success["country"],
        profilePhotoUrl: result.success["profilePhotoUrl"],
        followers: result.success["followers"],
        followings: result.success["followings"],
      );

      emit(DashbordMyProfileSuccessFull(user));
    } else {
      emit(DashbordMyProfileFail());
    }
  }

  Future<void> PasswordChange(String old_password, String password,
      String password_confirmation) async {
    emit(DashbordchangePasswordLoading());
    Result? result = await dashBordRepository.ChangePassWord(
        old_password, password, password_confirmation);
    if (result.isSuccess) {
      emit(DashbordchangePasswordSuccessFull());
    } else {
      emit(DashbordchangePasswordFail(result.success));
    }
  }

  Future<void> getGreetings() async {
    emit(DashbordMyGreetingsLoading());
    Result result = await dashBordRepository.getGreeting();
    if (result.isSuccess) {
      dynamic resultData = result.success;

      List<MyGreetings> ordersListdata = await myGreetingssList(
        resultData,
      );

      emit(DashbordMyGreetingsSuccessFull(ordersListdata));
    } else {
      emit(DashbordMyGreetingsFail("Something went wrong"));
    }
  }

  Future<void> getOrders() async {
    emit(DashbordLoadingMyorders());
    Result result = await dashBordRepository.getOrders();
    if (result.isSuccess) {
      dynamic resultData = result.success;

      List<MyGreetings> ordersListdata = await myGreetingssList(
        resultData,
      );

      emit(DashbordLoadingMyordersSucssellfull(ordersListdata));
    } else {
      emit(DashbordLoadingMyordersFail("error"));
    }
  }
}
