import 'package:core/base/BaseRepository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  BaseRepository baseRepository = BaseRepository.getInstance;
  LoginCubit() : super(InitLoginState());

  loginUser(String username, String password) async {
    if (username.isNotEmpty && password.length > 7) {
      var result = await baseRepository.login(username, password);
      result.when(
        success: (success) => emit(LoginSuccessState()), 
        failure: (failure) => emit(LoginSuccessState())
        );
    }
  }
}
