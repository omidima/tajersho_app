import 'package:json_annotation/json_annotation.dart';

part 'response_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ResponseModel<Data> {
  int count;
  String? next;
  String? previous;
  List<Data>? results;

  ResponseModel({this.count = 0, this.next, this.previous, this.results});

  factory ResponseModel.fromJson(Map<String, dynamic> json, Data Function(Object? json) fromJsonData) =>
      _$ResponseModelFromJson(json,
        fromJsonData);
}
