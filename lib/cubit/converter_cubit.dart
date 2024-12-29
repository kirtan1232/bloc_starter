import 'package:flutter_bloc/flutter_bloc.dart';

class ConverterCubit extends Cubit<double> {
  ConverterCubit() : super(0);

  void calculate(double distance) {
    emit(distance * 1000);
  }
}
