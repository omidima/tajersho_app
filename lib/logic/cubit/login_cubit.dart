import 'package:flutter_bloc/flutter_bloc.dart';
part '../state/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(InitLoginState());
}
