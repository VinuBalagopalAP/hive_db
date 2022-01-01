import 'package:flutter/cupertino.dart';
import 'package:hive_db/db/model/data_model.dart';

ValueNotifier<List<StudentModel>> studnetListNotifier = ValueNotifier([]);

void addStudent(StudentModel value) {
  studnetListNotifier.value.add(value);
  // print(value.toString());
}
