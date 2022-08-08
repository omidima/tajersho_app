// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseModel<Data> _$ResponseModelFromJson<Data>(
  Map<String, dynamic> json,
  Data Function(Object? json) fromJsonData,
) =>
    ResponseModel<Data>(
      count: json['count'] as int? ?? 0,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)?.map(fromJsonData).toList(),
    );

Map<String, dynamic> _$ResponseModelToJson<Data>(
  ResponseModel<Data> instance,
  Object? Function(Data value) toJsonData,
) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results?.map(toJsonData).toList(),
    };
