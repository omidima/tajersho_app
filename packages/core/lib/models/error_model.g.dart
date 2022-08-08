// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorModel<Data> _$ErrorModelFromJson<Data>(
  Map<String, dynamic> json,
  Data Function(Object? json) fromJsonData,
) =>
    ErrorModel<Data>(
      code: json['code'] as String?,
      detail: json['detail'] as String?,
      messages:
          (json['messages'] as List<dynamic>?)?.map(fromJsonData).toList(),
    );

Map<String, dynamic> _$ErrorModelToJson<Data>(
  ErrorModel<Data> instance,
  Object? Function(Data value) toJsonData,
) =>
    <String, dynamic>{
      'detail': instance.detail,
      'code': instance.code,
      'messages': instance.messages?.map(toJsonData).toList(),
    };
