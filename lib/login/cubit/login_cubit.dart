import 'package:core/base/BaseRepository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  BaseRepository baseRepository = BaseRepository.getInstance;
  LoginCubit() : super(InitLoginState());

  loginUser(String username, String password) async {
    print("$username, $password");
    if (username.isNotEmpty && password.length > 7) {
      var result = await baseRepository.login(username, password);
      result.when(
          success: (success) => emit(LoginSuccessState()),
          failure: (failure) => emit(LoginSuccessState()));
    }
  }

  changeUsername(String value) {
    if (value.isEmpty || value.length > 12) {
      emit(UsernameInvalidState());
    } else {
      emit(UsernameValidState());
    }
  }

  changePassword(String value) {
    if (value.isEmpty || value.length < 7) {
      emit(PasswordInvalidState());
    } else {
      emit(PasswordValidState());
    }
  }
}
