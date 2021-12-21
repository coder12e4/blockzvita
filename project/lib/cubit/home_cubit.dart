import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  int k = 0;

  Future<void> increment() async {
    await Future.delayed(Duration(seconds: 5), () {});

    emit(Home_IncrementClicked());
    int j = k;
    k = k + 1;
    await Future.delayed(Duration(seconds: 5), () {});
    if (k > j) {
      emit(Home_IncrementClickedSuccess(k));
    } else {
      emit(Home_IncrementClickedFail());
    }
  }
}
