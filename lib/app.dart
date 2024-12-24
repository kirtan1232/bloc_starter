import 'package:bloc_test/cubit/student_cubit.dart';
import 'package:bloc_test/view/student_cubit_view';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter BLoC',
      home: BlocProvider(
        create: (context) => StudentCubit(),
        child: StudentCubitView(),
      ),
    );
  }
}
