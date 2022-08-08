part of 'login_cubit.dart';

abstract class LoginState {}

class InitLoginState extends LoginState {}

class LoginSuccessState extends LoginState {

}

class LoginFailureState extends LoginState {}

