import 'package:flutter/material.dart';
import 'package:hive_db/db/functions/db_functions.dart';
import 'package:hive_db/db/model/data_model.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studnetListNotifier,
      builder:
          (BuildContext ctx, List<StudentModel> studentList, Widget? child) {
        return ListView.separated(
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Text("Name $index"),
              subtitle: Text('Age $index'),
            );
          },
          separatorBuilder: (ctx, index) {
            return const Divider();
          },
          itemCount: 50,
        );
      },
    );
  }
}
