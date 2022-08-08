import 'package:json_annotation/json_annotation.dart';

part 'error_message.g.dart';


@JsonSerializable()
class AuthError {
  String? token_class;
  String? token_type;
  String? message;

  AuthError({this.message, this.token_class, this.token_type});

  factory AuthError.fromJson(Map<String, dynamic> json) =>
      _$AuthErrorFromJson(json);
}
