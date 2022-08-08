// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FileModel _$FileModelFromJson(Map<String, dynamic> json) => FileModel(
      media_file: json['media_file'] as String?,
      media_name: json['media_name'] as String?,
      media_size: json['media_size'] as int?,
      media_type: json['media_type'] as String?,
      uid: json['uid'] as String?,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FileModelToJson(FileModel instance) => <String, dynamic>{
      'uid': instance.uid,
      'media_name': instance.media_name,
      'media_type': instance.media_type,
      'media_size': instance.media_size,
      'media_file': instance.media_file,
      'user': instance.user,
    };
