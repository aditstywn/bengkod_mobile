part of 'information_bloc.dart';

@freezed
class InformationEvent with _$InformationEvent {
  const factory InformationEvent.started() = _Started;
  const factory InformationEvent.getInformation(int id) = _GetInformation;
}
