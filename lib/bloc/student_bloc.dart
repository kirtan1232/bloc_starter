import 'package:bloc/bloc.dart';
import 'package:bloc_test/model/student_model.dart';
import 'package:equatable/equatable.dart';

part 'student_event.dart';
part 'student_state.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  StudentBloc() : super(StudentState.initial()) {
    on<AddStudentEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await Future.delayed(Duration(seconds: 1), () {
        emit(state.copyWith(
          students: state.students..add(event.studentModel),
          isLoading: false,
        ));
      });
    });

    on<DeleteStudent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await Future.delayed(Duration(seconds: 1));

      final List<StudentModel> updatedStudents = List.from(state.students)
        ..removeAt(event.index);
      emit(state.copyWith(
        students: updatedStudents,
        isLoading: false,
      ));
    });
  }
}
