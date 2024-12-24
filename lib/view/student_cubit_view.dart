import 'package:bloc_test/cubit/counter_cubit.dart';
import 'package:bloc_test/model/student_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StudentCubitView extends StatelessWidget {
  const StudentCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    List<StudentModel> lstStudent = [];
    StudentModel student;
    String name = "";
    int age = 0;
    String address = "";

    final formKey = GlobalKey<FormState>();
    final studentNameController = TextEditingController();
    final studentAgeController = TextEditingController();
    final studentAddressController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("arithmetic cubit"),
      ),
      body: SafeArea(
          child: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              controller: studentNameController,
            ),
            TextFormField(
              controller: studentAgeController,
            ),
            TextFormField(
              controller: studentAddressController,
            ),
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                return Text(
                  "Result: $state",
                  style: const TextStyle(
                      fontSize: 48, fontWeight: FontWeight.bold),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                name = studentNameController.text;
                age = int.parse(studentNameController.text);
                address = studentAddressController.text;
                student = StudentModel(name: name, age: age, address: address);
              },
              child: Text("Add Student"),
            ),
          ],
        ),
      )),
    );
  }
}
