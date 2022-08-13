part of 'login_cubit.dart';

abstract class LoginState {}

class InitLoginState extends LoginState {}

class LoginSuccessState extends LoginState {

}

class LoginFailureState extends LoginState {}

class UsernameInvalidState extends LoginState {}

class UsernameValidState extends LoginState {}

class PasswordInvalidState extends LoginState {}

class PasswordValidState extends LoginState {}

