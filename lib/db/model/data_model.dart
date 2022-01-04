import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class StudentModel {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final String age;

  StudentModel({
    required this.name,
    required this.age,
  });
}
