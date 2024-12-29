import 'package:bloc_test/cubit/area_of_circle_cubit.dart';
import 'package:bloc_test/cubit/arithmetic_counter_cubit.dart';
import 'package:bloc_test/cubit/converter_cubit.dart';
import 'package:bloc_test/cubit/counter_cubit.dart';
import 'package:bloc_test/cubit/dashboard_cubit.dart';
import 'package:bloc_test/cubit/simple_interest_cubit.dart';
import 'package:bloc_test/cubit/student_cubit.dart';
import 'package:bloc_test/view/dashbaord_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()),
        BlocProvider(create: (context) => ArithmeticCubit()),
        BlocProvider(create: (context) => StudentCubit()),
        BlocProvider(create: (context) => SimpleInterestCubit()),
        BlocProvider(create: (context) => AreaOfCircleCubit()),
        BlocProvider(create: (context) => ConverterCubit()),
        BlocProvider(
          create: (context) => DashboardCubit(
            context.read<CounterCubit>(),
            context.read<ArithmeticCubit>(),
            context.read<StudentCubit>(),
            context.read<SimpleInterestCubit>(),
            context.read<AreaOfCircleCubit>(),
            context.read<ConverterCubit>(),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter BLoC',
        home: BlocProvider(
          create: (context) => StudentCubit(),
          child: DashboardView(),
        ),
      ),
    );
  }
}
