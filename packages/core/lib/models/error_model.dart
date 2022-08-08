import 'package:json_annotation/json_annotation.dart';

part 'error_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ErrorModel<Data> {
  String? detail;
  String? code;
  List<Data>? messages;

  ErrorModel({
    this.code,
    this.detail,
    this.messages
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json, Data Function(Object?) fromJsonData) =>
      _$ErrorModelFromJson(json,fromJsonData);
}






