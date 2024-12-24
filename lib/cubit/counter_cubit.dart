import 'package:flutter_bloc/flutter_bloc.dart';

int initial = 0;

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(initial);

  void increment() {
    emit(state + 1);
  }

  void drcrement() {
    emit(state - 1);
    if (state == 98) {
      reset();
    }
  }

  void reset() {
    emit(initial);
  }

  void add(int a, int b) {
    emit(a + b);
  }

  void subtract(int a, int b) {
    emit(a - b);
  }

  void multiply(int a, int b) {
    emit(a * b);
  }
}
