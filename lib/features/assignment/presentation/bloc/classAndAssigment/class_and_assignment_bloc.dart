import '../../../data/datasource/assignment_remote_datasource.dart';
import '../../../data/models/response/assignment_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_and_assignment_bloc.freezed.dart';
part 'class_and_assignment_event.dart';
part 'class_and_assignment_state.dart';

class ClassAndAssignmentBloc
    extends Bloc<ClassAndAssignmentEvent, ClassAndAssignmentState> {
  final AssignmentRemoteDatasource assignmentRemoteDatasource;
  ClassAndAssignmentBloc(
    this.assignmentRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetClassAndAssignment>((event, emit) async {
      emit(const _Loading());

      final response = await assignmentRemoteDatasource.getClassAssignment();

      await response.fold(
        (l) async => emit(_Error(l)),
        (r) async {
          final classAssignment = r.data;
          final List<Assignment> assignment = [];

          await Future.wait(
            classAssignment.map(
              (e) async {
                final assignmentResponse =
                    await assignmentRemoteDatasource.getAssignment(e.id);

                return assignmentResponse.fold(
                  (l) => null,
                  (r) {
                    for (var element in r.data) {
                      assignment.add(element.copyWith(
                        idClass: e.id,
                        titleClass: e.name,
                      ));
                    }
                  },
                );
              },
            ),
          );
          assignment.sort((a, b) {
            if (a.isUploaded != b.isUploaded) {
              return a.isUploaded ? 1 : -1; // false lebih dulu
            }
            return a.startTime
                .compareTo(b.startTime); // Urutkan berdasarkan waktu
          });
          emit(_GetClassAndAssignmentSuccess(assignment));
        },
      );
    });
  }
}
