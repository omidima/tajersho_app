import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  String? username;
  String? password;
  String? phone_number;
  String? email;

  LoginModel({this.email, this.password, this.phone_number, this.username});

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}
