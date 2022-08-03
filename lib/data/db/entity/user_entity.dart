import 'package:hive_flutter/hive_flutter.dart';

part 'user_entity.g.dart';


@HiveType(typeId: 0)
class UserEntity {

  @HiveField(0)
  String? lastname;

  @HiveField(1)
  String? firstname;
}
