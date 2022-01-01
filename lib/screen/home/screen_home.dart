import 'package:flutter/material.dart';
import 'package:hive_db/screen/home/widgets/add_student_widget.dart';
import 'package:hive_db/screen/home/widgets/list_student_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AddStudentWidget(),
            const Expanded(
              child: ListStudentWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
