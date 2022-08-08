// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendorModel _$VendorModelFromJson(Map<String, dynamic> json) => VendorModel(
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      location: json['location'] as String?,
      store_name: json['store_name'] as String?,
      verify: json['verify'] as bool?,
      point: (json['point'] as num?)?.toDouble(),
      level: json['level'] as int?,
      profile_pic: json['profile_pic'] as String?,
    );

Map<String, dynamic> _$VendorModelToJson(VendorModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'location': instance.location,
      'store_name': instance.store_name,
      'verify': instance.verify,
      'point': instance.point,
      'level': instance.level,
      'profile_pic': instance.profile_pic,
    };
