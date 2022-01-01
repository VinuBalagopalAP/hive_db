import 'package:flutter/material.dart';
import 'package:hive_db/db/functions/db_functions.dart';
import 'package:hive_db/db/model/data_model.dart';

class AddStudentWidget extends StatelessWidget {
  AddStudentWidget({Key? key}) : super(key: key);

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Name',
            ),
          ),
          const SizedBox(height: 10.0),
          TextFormField(
            controller: _ageController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Age',
            ),
          ),
          const SizedBox(height: 10.0),
          ElevatedButton.icon(
            onPressed: () {
              onAddStudentButtonCLicked();
            },
            icon: const Icon(Icons.add),
            label: const Text('Add Student'),
          ),
        ],
      ),
    );
  }

  Future<void> onAddStudentButtonCLicked() async {
    final _name = _nameController.text.trim();
    final _age = _ageController.text.trim();
    if (_name.isEmpty || _age.isEmpty) {
      return;
    }
    // print("$_name $_age");

    final _student = StudentModel(name: _name, age: _age);

    addStudent(_student);
  }
}