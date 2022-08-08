import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';


@JsonSerializable()
class UserModel {
  String? pk;
  String? username;
  String? first_name;
  String? last_name;
  String? email;

  UserModel({
    this.email,
    this.first_name,
    this.last_name,
    this.pk,
    this.username
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
