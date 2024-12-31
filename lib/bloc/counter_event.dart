part of 'counter_bloc.dart';

sealed class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class AddEvent extends CounterEvent {
  const AddEvent();
}

class SubtractEvent extends CounterEvent {
  const SubtractEvent();
}

class ResetEvent extends CounterEvent {
  const ResetEvent();
}
