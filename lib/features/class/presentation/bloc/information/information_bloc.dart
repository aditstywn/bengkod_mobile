import 'package:bengkod_mobile_app/features/class/data/datasource/class_remote_datasource.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/response/information_class_response_model.dart';

part 'information_bloc.freezed.dart';
part 'information_event.dart';
part 'information_state.dart';

class InformationBloc extends Bloc<InformationEvent, InformationState> {
  final ClassRemoteDatasource classRemoteDatasource;
  InformationBloc(
    this.classRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetInformation>(
      (event, emit) async {
        emit(const _Loading());

        final response = await classRemoteDatasource.getInformation(event.id);

        response.fold(
          (l) => emit(_Error(l)),
          (r) => emit(_GetInformationSuccess(r)),
        );
      },
    );
  }
}
