import 'package:core/models/user_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vendor_model.g.dart';


@JsonSerializable()
class VendorModel {
  UserModel? user;
  String? location;
  String? store_name;
  bool? verify;
  double? point;
  int? level;
  String? profile_pic;

  VendorModel({
    this.user,
    this.location,
    this.store_name,
    this.verify,
    this.point,
    this.level,
    this.profile_pic,
  });

  factory VendorModel.fromJson(Map<String, dynamic> json) =>
      _$VendorModelFromJson(json);
}
