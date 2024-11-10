import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/datasource/profile_remote_datasorce.dart';

import '../../data/models/response/profile_response_model.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRemoteDatasorce profileRemoteDatasorce;
  ProfileBloc(
    this.profileRemoteDatasorce,
  ) : super(const _Initial()) {
    on<_GetProfile>((event, emit) async {
      emit(const _Loading());

      final response = await profileRemoteDatasorce.getProfile();

      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_GetProfileSuccess(r)),
      );
    });
  }
}
