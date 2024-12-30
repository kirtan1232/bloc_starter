import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'arithmetic_event.dart';

class ArithmeticBloc extends Bloc<ArithmeticEvent, int> {
  ArithmeticBloc() : super(0) {
    on<IncrementEvent>((event, emit) {
      final result = event.first + event.second;
      emit(result);
      // TODO: implement event handler
    });
    on<DecrementEvent>((event, emit) {
      final result = event.first + event.second;
      emit(result);
      // TODO: implement event handler
    });
    on<MultiplyEvent>((event, emit) {
      final result = event.first + event.second;
      emit(result);
      // TODO: implement event handler
    });
  }
}
