import 'package:bloc/bloc.dart';
import 'package:cheersclub/cubit/repository/forgotPassRepo.dart';
import 'package:result_type/result_type.dart';

part 'forget_pass_word_state.dart';

class ForgetPassWordCubit extends Cubit<ForgetPassWordState> {
  final ForgetPassRe forgetPassRe;
  ForgetPassWordCubit(this.forgetPassRe) : super(ForgetPassWordInitial());

  Future<void> authenticateUser(
    String? username,
  ) async {
    emit(ForgetPassWordLoading());
    Result? result = await forgetPassRe.ForgetPassReo(username);

    if (result.isSuccess) {
      emit(ForgetPassWordSuccessFull());
    } else {
      emit(ForgetPassWordFailed("try again"));
    }
  }
}
