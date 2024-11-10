part of 'information_bloc.dart';

@freezed
class InformationState with _$InformationState {
  const factory InformationState.initial() = _Initial;
  const factory InformationState.loading() = _Loading;
  const factory InformationState.getInformationSuccess(
          InformationClassResponseModel informationClassResponseModel) =
      _GetInformationSuccess;
  const factory InformationState.error(String message) = _Error;
}
