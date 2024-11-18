import '../../data/datasource/settings_remote_datasource.dart';
import '../../data/models/request/update_password_request_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/response/update_password_response_model.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SettingsRemoteDatasource settingsRemoteDatasource;
  SettingsBloc(this.settingsRemoteDatasource) : super(const _Initial()) {
    on<_UpdatePassword>((event, emit) async {
      emit(const _Loading());

      final response = await settingsRemoteDatasource
          .updatePassword(event.updatePasswordRequestModel);

      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_UpdatePasswordSuccess(r)),
      );
    });
  }
}
