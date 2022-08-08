import 'package:core/models/user_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart';

part 'file_model.g.dart';


@JsonSerializable()
class FileModel {
  String? uid;
  String? media_name;
  String? media_type;
  int? media_size;
  String? media_file;
  UserModel? user;

  FileModel({
    this.media_file,
    this.media_name,
    this.media_size,
    this.media_type,
    this.uid,
    this.user
  });

  factory FileModel.fromJson(Map<String, dynamic> json) =>
      _$FileModelFromJson(json);
}
