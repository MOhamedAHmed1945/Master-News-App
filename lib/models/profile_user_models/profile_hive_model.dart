import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'profile_hive_model.g.dart';

@HiveType(typeId: 0)
class ProfileHiveModel extends HiveObject {
  @HiveField(0)
  final String email;
  @HiveField(1)
  final String userName;
  @HiveField(2)
  final String country;
  @HiveField(3)
  final String address;
  @HiveField(4)
  //final int phoneNumber;
  final String phoneNumber;
  @HiveField(5)
  //final int age;
  late final String age;
  ProfileHiveModel({
    required this.email,
    required this.userName,
    required this.country,
    required this.address,
    required this.phoneNumber,
    required this.age,
  });
}
