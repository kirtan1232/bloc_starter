import 'package:bloc_test/bloc/arithmetic_bloc.dart';
import 'package:bloc_test/bloc/counter_bloc.dart';
import 'package:bloc_test/bloc/student_bloc.dart';
import 'package:bloc_test/cubit/area_of_circle_cubit.dart';
import 'package:bloc_test/cubit/arithmetic_counter_cubit.dart';
import 'package:bloc_test/cubit/converter_cubit.dart';
import 'package:bloc_test/cubit/counter_cubit.dart';
import 'package:bloc_test/cubit/dashboard_cubit.dart';
import 'package:bloc_test/cubit/simple_interest_cubit.dart';
import 'package:bloc_test/cubit/student_cubit.dart';
import 'package:bloc_test/service_locator/service_locator.dart';
import 'package:bloc_test/view/dashbaord_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterCubit>(
            create: (context) => serviceLocator()), //1 method
        BlocProvider(
          create: (context) => serviceLocator<ArithmeticCubit>(),

          ///2 method
        ),
        BlocProvider(
          create: (context) => serviceLocator<StudentCubit>(),
        ),
        BlocProvider(
          create: (context) => serviceLocator<SimpleInterestCubit>(),
        ),
        BlocProvider(
          create: (context) => serviceLocator<AreaOfCircleCubit>(),
        ),
        BlocProvider(
          create: (context) => serviceLocator<ConverterCubit>(),
        ),
        BlocProvider(
          create: (context) => serviceLocator<ArithmeticBloc>(),
        ),
        BlocProvider(
          create: (context) => serviceLocator<CounterBloc>(),
        ),
        BlocProvider(
          create: (context) => serviceLocator<StudentBloc>(),
        ),
        BlocProvider(
          create: (context) => DashboardCubit(
            context.read<CounterCubit>(),
            context.read<ArithmeticCubit>(),
            context.read<StudentCubit>(),
            context.read<SimpleInterestCubit>(),
            context.read<AreaOfCircleCubit>(),
            context.read<ConverterCubit>(),
            context.read<ArithmeticBloc>(),
            context.read<CounterBloc>(),
            context.read<StudentBloc>(),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter BLoC',
        home: BlocProvider.value(
          value: serviceLocator<DashboardCubit>(),
          child: DashboardView(),
        ),
      ),
    );
  }
}
