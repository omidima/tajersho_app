// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthError _$AuthErrorFromJson(Map<String, dynamic> json) => AuthError(
      message: json['message'] as String?,
      token_class: json['token_class'] as String?,
      token_type: json['token_type'] as String?,
    );

Map<String, dynamic> _$AuthErrorToJson(AuthError instance) => <String, dynamic>{
      'token_class': instance.token_class,
      'token_type': instance.token_type,
      'message': instance.message,
    };
