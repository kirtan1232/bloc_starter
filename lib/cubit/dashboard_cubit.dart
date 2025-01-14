import 'package:bloc_test/bloc/arithmetic_bloc.dart';
import 'package:bloc_test/bloc/counter_bloc.dart';
import 'package:bloc_test/bloc/student_bloc.dart';
import 'package:bloc_test/cubit/area_of_circle_cubit.dart';
import 'package:bloc_test/cubit/arithmetic_counter_cubit.dart';
import 'package:bloc_test/cubit/converter_cubit.dart';
import 'package:bloc_test/cubit/counter_cubit.dart';
import 'package:bloc_test/cubit/simple_interest_cubit.dart';
import 'package:bloc_test/cubit/student_cubit.dart';
import 'package:bloc_test/view/area_of_circle_cubit_view.dart';
import 'package:bloc_test/view/arithmetic_bloc_view.dart';
import 'package:bloc_test/view/arithmetic_cubit_view.dart';
import 'package:bloc_test/view/converter_view.dart';
import 'package:bloc_test/view/counter_bloc_view.dart';
import 'package:bloc_test/view/counter_cubit_view.dart';
import 'package:bloc_test/view/simple_interest_view.dart';
import 'package:bloc_test/view/student_bloc_view.dart';
import 'package:bloc_test/view/student_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._counterCubit,
    this._arithmeticCubit,
    this._studentCubit,
    this._simpleInterestCubit,
    this._areaOfCircleCubit,
    this._converterCubit,
    this._arithmeticBloc,
    this._counterBloc,
    this._studentBloc,
  ) : super(null);

  final CounterCubit _counterCubit;
  final ArithmeticCubit _arithmeticCubit;
  final StudentCubit _studentCubit;
  final SimpleInterestCubit _simpleInterestCubit;
  final AreaOfCircleCubit _areaOfCircleCubit;
  final ConverterCubit _converterCubit;
  final ArithmeticBloc _arithmeticBloc;
  final CounterBloc _counterBloc;
  final StudentBloc _studentBloc;

  void openCounterView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _counterCubit,
          child: CounterCubitView(),
        ),
      ),
    );
  }

  void openArithmeticView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _arithmeticCubit,
          child: ArithmeticCubitView(),
        ),
      ),
    );
  }

  void openStudentView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _studentCubit,
          child: StudentCubitView(),
        ),
      ),
    );
  }

  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _simpleInterestCubit,
          child: SimpleInterestCubitView(),
        ),
      ),
    );
  }

  void openAreaOfCircleView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _areaOfCircleCubit,
          child: AreaOfCircleCubitView(),
        ),
      ),
    );
  }

  void openConverterView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _converterCubit,
          child: ConverterCubitView(),
        ),
      ),
    );
  }

  void openArithmeticBloc(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _arithmeticBloc,
          child: ArithmeticBlocView(),
        ),
      ),
    );
  }

  void openCounterBloc(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _counterBloc,
          child: CounterBlocView(),
        ),
      ),
    );
  }

  void openStudentBloc(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _studentBloc,
          child: StudentBlocView(),
        ),
      ),
    );
  }
}
