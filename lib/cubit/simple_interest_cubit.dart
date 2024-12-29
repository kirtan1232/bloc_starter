import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleInterestCubit extends Cubit<double> {
  SimpleInterestCubit() : super(0);

  void calculate(double principle, double time, double rate) {
    emit((principle * time * rate) / 100);
  }
}
