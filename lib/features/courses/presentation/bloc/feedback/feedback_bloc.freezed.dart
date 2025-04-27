// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FeedbackEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(FeedbackRequestModel feedback, int idCourse)
        feedback,
    required TResult Function(int idCourse) getCertificate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(FeedbackRequestModel feedback, int idCourse)? feedback,
    TResult? Function(int idCourse)? getCertificate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FeedbackRequestModel feedback, int idCourse)? feedback,
    TResult Function(int idCourse)? getCertificate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Feedback value) feedback,
    required TResult Function(_GetCertificate value) getCertificate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Feedback value)? feedback,
    TResult? Function(_GetCertificate value)? getCertificate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Feedback value)? feedback,
    TResult Function(_GetCertificate value)? getCertificate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackEventCopyWith<$Res> {
  factory $FeedbackEventCopyWith(
          FeedbackEvent value, $Res Function(FeedbackEvent) then) =
      _$FeedbackEventCopyWithImpl<$Res, FeedbackEvent>;
}

/// @nodoc
class _$FeedbackEventCopyWithImpl<$Res, $Val extends FeedbackEvent>
    implements $FeedbackEventCopyWith<$Res> {
  _$FeedbackEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$FeedbackEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'FeedbackEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(FeedbackRequestModel feedback, int idCourse)
        feedback,
    required TResult Function(int idCourse) getCertificate,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(FeedbackRequestModel feedback, int idCourse)? feedback,
    TResult? Function(int idCourse)? getCertificate,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FeedbackRequestModel feedback, int idCourse)? feedback,
    TResult Function(int idCourse)? getCertificate,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Feedback value) feedback,
    required TResult Function(_GetCertificate value) getCertificate,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Feedback value)? feedback,
    TResult? Function(_GetCertificate value)? getCertificate,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Feedback value)? feedback,
    TResult Function(_GetCertificate value)? getCertificate,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FeedbackEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FeedbackImplCopyWith<$Res> {
  factory _$$FeedbackImplCopyWith(
          _$FeedbackImpl value, $Res Function(_$FeedbackImpl) then) =
      __$$FeedbackImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FeedbackRequestModel feedback, int idCourse});
}

/// @nodoc
class __$$FeedbackImplCopyWithImpl<$Res>
    extends _$FeedbackEventCopyWithImpl<$Res, _$FeedbackImpl>
    implements _$$FeedbackImplCopyWith<$Res> {
  __$$FeedbackImplCopyWithImpl(
      _$FeedbackImpl _value, $Res Function(_$FeedbackImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedback = null,
    Object? idCourse = null,
  }) {
    return _then(_$FeedbackImpl(
      null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as FeedbackRequestModel,
      null == idCourse
          ? _value.idCourse
          : idCourse // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FeedbackImpl implements _Feedback {
  const _$FeedbackImpl(this.feedback, this.idCourse);

  @override
  final FeedbackRequestModel feedback;
  @override
  final int idCourse;

  @override
  String toString() {
    return 'FeedbackEvent.feedback(feedback: $feedback, idCourse: $idCourse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackImpl &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback) &&
            (identical(other.idCourse, idCourse) ||
                other.idCourse == idCourse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedback, idCourse);

  /// Create a copy of FeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackImplCopyWith<_$FeedbackImpl> get copyWith =>
      __$$FeedbackImplCopyWithImpl<_$FeedbackImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(FeedbackRequestModel feedback, int idCourse)
        feedback,
    required TResult Function(int idCourse) getCertificate,
  }) {
    return feedback(this.feedback, idCourse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(FeedbackRequestModel feedback, int idCourse)? feedback,
    TResult? Function(int idCourse)? getCertificate,
  }) {
    return feedback?.call(this.feedback, idCourse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FeedbackRequestModel feedback, int idCourse)? feedback,
    TResult Function(int idCourse)? getCertificate,
    required TResult orElse(),
  }) {
    if (feedback != null) {
      return feedback(this.feedback, idCourse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Feedback value) feedback,
    required TResult Function(_GetCertificate value) getCertificate,
  }) {
    return feedback(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Feedback value)? feedback,
    TResult? Function(_GetCertificate value)? getCertificate,
  }) {
    return feedback?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Feedback value)? feedback,
    TResult Function(_GetCertificate value)? getCertificate,
    required TResult orElse(),
  }) {
    if (feedback != null) {
      return feedback(this);
    }
    return orElse();
  }
}

abstract class _Feedback implements FeedbackEvent {
  const factory _Feedback(
      final FeedbackRequestModel feedback, final int idCourse) = _$FeedbackImpl;

  FeedbackRequestModel get feedback;
  int get idCourse;

  /// Create a copy of FeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackImplCopyWith<_$FeedbackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCertificateImplCopyWith<$Res> {
  factory _$$GetCertificateImplCopyWith(_$GetCertificateImpl value,
          $Res Function(_$GetCertificateImpl) then) =
      __$$GetCertificateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int idCourse});
}

/// @nodoc
class __$$GetCertificateImplCopyWithImpl<$Res>
    extends _$FeedbackEventCopyWithImpl<$Res, _$GetCertificateImpl>
    implements _$$GetCertificateImplCopyWith<$Res> {
  __$$GetCertificateImplCopyWithImpl(
      _$GetCertificateImpl _value, $Res Function(_$GetCertificateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCourse = null,
  }) {
    return _then(_$GetCertificateImpl(
      null == idCourse
          ? _value.idCourse
          : idCourse // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetCertificateImpl implements _GetCertificate {
  const _$GetCertificateImpl(this.idCourse);

  @override
  final int idCourse;

  @override
  String toString() {
    return 'FeedbackEvent.getCertificate(idCourse: $idCourse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCertificateImpl &&
            (identical(other.idCourse, idCourse) ||
                other.idCourse == idCourse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idCourse);

  /// Create a copy of FeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCertificateImplCopyWith<_$GetCertificateImpl> get copyWith =>
      __$$GetCertificateImplCopyWithImpl<_$GetCertificateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(FeedbackRequestModel feedback, int idCourse)
        feedback,
    required TResult Function(int idCourse) getCertificate,
  }) {
    return getCertificate(idCourse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(FeedbackRequestModel feedback, int idCourse)? feedback,
    TResult? Function(int idCourse)? getCertificate,
  }) {
    return getCertificate?.call(idCourse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(FeedbackRequestModel feedback, int idCourse)? feedback,
    TResult Function(int idCourse)? getCertificate,
    required TResult orElse(),
  }) {
    if (getCertificate != null) {
      return getCertificate(idCourse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Feedback value) feedback,
    required TResult Function(_GetCertificate value) getCertificate,
  }) {
    return getCertificate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Feedback value)? feedback,
    TResult? Function(_GetCertificate value)? getCertificate,
  }) {
    return getCertificate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Feedback value)? feedback,
    TResult Function(_GetCertificate value)? getCertificate,
    required TResult orElse(),
  }) {
    if (getCertificate != null) {
      return getCertificate(this);
    }
    return orElse();
  }
}

abstract class _GetCertificate implements FeedbackEvent {
  const factory _GetCertificate(final int idCourse) = _$GetCertificateImpl;

  int get idCourse;

  /// Create a copy of FeedbackEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCertificateImplCopyWith<_$GetCertificateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeedbackState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(FeedbackResponseModel feedback,
            GenerateCertificateResponseModel certificate)
        feedbackSuccess,
    required TResult Function(GetCertificateResponseModel certificate)
        getCertificateSuccess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(FeedbackResponseModel feedback,
            GenerateCertificateResponseModel certificate)?
        feedbackSuccess,
    TResult? Function(GetCertificateResponseModel certificate)?
        getCertificateSuccess,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FeedbackResponseModel feedback,
            GenerateCertificateResponseModel certificate)?
        feedbackSuccess,
    TResult Function(GetCertificateResponseModel certificate)?
        getCertificateSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FeedbackSuccess value) feedbackSuccess,
    required TResult Function(_GetCertificateSuccess value)
        getCertificateSuccess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FeedbackSuccess value)? feedbackSuccess,
    TResult? Function(_GetCertificateSuccess value)? getCertificateSuccess,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FeedbackSuccess value)? feedbackSuccess,
    TResult Function(_GetCertificateSuccess value)? getCertificateSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackStateCopyWith<$Res> {
  factory $FeedbackStateCopyWith(
          FeedbackState value, $Res Function(FeedbackState) then) =
      _$FeedbackStateCopyWithImpl<$Res, FeedbackState>;
}

/// @nodoc
class _$FeedbackStateCopyWithImpl<$Res, $Val extends FeedbackState>
    implements $FeedbackStateCopyWith<$Res> {
  _$FeedbackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FeedbackStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FeedbackState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(FeedbackResponseModel feedback,
            GenerateCertificateResponseModel certificate)
        feedbackSuccess,
    required TResult Function(GetCertificateResponseModel certificate)
        getCertificateSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(FeedbackResponseModel feedback,
            GenerateCertificateResponseModel certificate)?
        feedbackSuccess,
    TResult? Function(GetCertificateResponseModel certificate)?
        getCertificateSuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FeedbackResponseModel feedback,
            GenerateCertificateResponseModel certificate)?
        feedbackSuccess,
    TResult Function(GetCertificateResponseModel certificate)?
        getCertificateSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FeedbackSuccess value) feedbackSuccess,
    required TResult Function(_GetCertificateSuccess value)
        getCertificateSuccess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FeedbackSuccess value)? feedbackSuccess,
    TResult? Function(_GetCertificateSuccess value)? getCertificateSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FeedbackSuccess value)? feedbackSuccess,
    TResult Function(_GetCertificateSuccess value)? getCertificateSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FeedbackState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$FeedbackStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'FeedbackState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(FeedbackResponseModel feedback,
            GenerateCertificateResponseModel certificate)
        feedbackSuccess,
    required TResult Function(GetCertificateResponseModel certificate)
        getCertificateSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(FeedbackResponseModel feedback,
            GenerateCertificateResponseModel certificate)?
        feedbackSuccess,
    TResult? Function(GetCertificateResponseModel certificate)?
        getCertificateSuccess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FeedbackResponseModel feedback,
            GenerateCertificateResponseModel certificate)?
        feedbackSuccess,
    TResult Function(GetCertificateResponseModel certificate)?
        getCertificateSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FeedbackSuccess value) feedbackSuccess,
    required TResult Function(_GetCertificateSuccess value)
        getCertificateSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FeedbackSuccess value)? feedbackSuccess,
    TResult? Function(_GetCertificateSuccess value)? getCertificateSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FeedbackSuccess value)? feedbackSuccess,
    TResult Function(_GetCertificateSuccess value)? getCertificateSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FeedbackState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$FeedbackSuccessImplCopyWith<$Res> {
  factory _$$FeedbackSuccessImplCopyWith(_$FeedbackSuccessImpl value,
          $Res Function(_$FeedbackSuccessImpl) then) =
      __$$FeedbackSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {FeedbackResponseModel feedback,
      GenerateCertificateResponseModel certificate});
}

/// @nodoc
class __$$FeedbackSuccessImplCopyWithImpl<$Res>
    extends _$FeedbackStateCopyWithImpl<$Res, _$FeedbackSuccessImpl>
    implements _$$FeedbackSuccessImplCopyWith<$Res> {
  __$$FeedbackSuccessImplCopyWithImpl(
      _$FeedbackSuccessImpl _value, $Res Function(_$FeedbackSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedback = null,
    Object? certificate = null,
  }) {
    return _then(_$FeedbackSuccessImpl(
      null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as FeedbackResponseModel,
      null == certificate
          ? _value.certificate
          : certificate // ignore: cast_nullable_to_non_nullable
              as GenerateCertificateResponseModel,
    ));
  }
}

/// @nodoc

class _$FeedbackSuccessImpl implements _FeedbackSuccess {
  const _$FeedbackSuccessImpl(this.feedback, this.certificate);

  @override
  final FeedbackResponseModel feedback;
  @override
  final GenerateCertificateResponseModel certificate;

  @override
  String toString() {
    return 'FeedbackState.feedbackSuccess(feedback: $feedback, certificate: $certificate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackSuccessImpl &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback) &&
            (identical(other.certificate, certificate) ||
                other.certificate == certificate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedback, certificate);

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackSuccessImplCopyWith<_$FeedbackSuccessImpl> get copyWith =>
      __$$FeedbackSuccessImplCopyWithImpl<_$FeedbackSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(FeedbackResponseModel feedback,
            GenerateCertificateResponseModel certificate)
        feedbackSuccess,
    required TResult Function(GetCertificateResponseModel certificate)
        getCertificateSuccess,
    required TResult Function(String message) error,
  }) {
    return feedbackSuccess(feedback, certificate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(FeedbackResponseModel feedback,
            GenerateCertificateResponseModel certificate)?
        feedbackSuccess,
    TResult? Function(GetCertificateResponseModel certificate)?
        getCertificateSuccess,
    TResult? Function(String message)? error,
  }) {
    return feedbackSuccess?.call(feedback, certificate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FeedbackResponseModel feedback,
            GenerateCertificateResponseModel certificate)?
        feedbackSuccess,
    TResult Function(GetCertificateResponseModel certificate)?
        getCertificateSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (feedbackSuccess != null) {
      return feedbackSuccess(feedback, certificate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FeedbackSuccess value) feedbackSuccess,
    required TResult Function(_GetCertificateSuccess value)
        getCertificateSuccess,
    required TResult Function(_Error value) error,
  }) {
    return feedbackSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FeedbackSuccess value)? feedbackSuccess,
    TResult? Function(_GetCertificateSuccess value)? getCertificateSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return feedbackSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FeedbackSuccess value)? feedbackSuccess,
    TResult Function(_GetCertificateSuccess value)? getCertificateSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (feedbackSuccess != null) {
      return feedbackSuccess(this);
    }
    return orElse();
  }
}

abstract class _FeedbackSuccess implements FeedbackState {
  const factory _FeedbackSuccess(final FeedbackResponseModel feedback,
          final GenerateCertificateResponseModel certificate) =
      _$FeedbackSuccessImpl;

  FeedbackResponseModel get feedback;
  GenerateCertificateResponseModel get certificate;

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackSuccessImplCopyWith<_$FeedbackSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCertificateSuccessImplCopyWith<$Res> {
  factory _$$GetCertificateSuccessImplCopyWith(
          _$GetCertificateSuccessImpl value,
          $Res Function(_$GetCertificateSuccessImpl) then) =
      __$$GetCertificateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetCertificateResponseModel certificate});
}

/// @nodoc
class __$$GetCertificateSuccessImplCopyWithImpl<$Res>
    extends _$FeedbackStateCopyWithImpl<$Res, _$GetCertificateSuccessImpl>
    implements _$$GetCertificateSuccessImplCopyWith<$Res> {
  __$$GetCertificateSuccessImplCopyWithImpl(_$GetCertificateSuccessImpl _value,
      $Res Function(_$GetCertificateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificate = null,
  }) {
    return _then(_$GetCertificateSuccessImpl(
      null == certificate
          ? _value.certificate
          : certificate // ignore: cast_nullable_to_non_nullable
              as GetCertificateResponseModel,
    ));
  }
}

/// @nodoc

class _$GetCertificateSuccessImpl implements _GetCertificateSuccess {
  const _$GetCertificateSuccessImpl(this.certificate);

  @override
  final GetCertificateResponseModel certificate;

  @override
  String toString() {
    return 'FeedbackState.getCertificateSuccess(certificate: $certificate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCertificateSuccessImpl &&
            (identical(other.certificate, certificate) ||
                other.certificate == certificate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, certificate);

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCertificateSuccessImplCopyWith<_$GetCertificateSuccessImpl>
      get copyWith => __$$GetCertificateSuccessImplCopyWithImpl<
          _$GetCertificateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(FeedbackResponseModel feedback,
            GenerateCertificateResponseModel certificate)
        feedbackSuccess,
    required TResult Function(GetCertificateResponseModel certificate)
        getCertificateSuccess,
    required TResult Function(String message) error,
  }) {
    return getCertificateSuccess(certificate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(FeedbackResponseModel feedback,
            GenerateCertificateResponseModel certificate)?
        feedbackSuccess,
    TResult? Function(GetCertificateResponseModel certificate)?
        getCertificateSuccess,
    TResult? Function(String message)? error,
  }) {
    return getCertificateSuccess?.call(certificate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FeedbackResponseModel feedback,
            GenerateCertificateResponseModel certificate)?
        feedbackSuccess,
    TResult Function(GetCertificateResponseModel certificate)?
        getCertificateSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (getCertificateSuccess != null) {
      return getCertificateSuccess(certificate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FeedbackSuccess value) feedbackSuccess,
    required TResult Function(_GetCertificateSuccess value)
        getCertificateSuccess,
    required TResult Function(_Error value) error,
  }) {
    return getCertificateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FeedbackSuccess value)? feedbackSuccess,
    TResult? Function(_GetCertificateSuccess value)? getCertificateSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return getCertificateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FeedbackSuccess value)? feedbackSuccess,
    TResult Function(_GetCertificateSuccess value)? getCertificateSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (getCertificateSuccess != null) {
      return getCertificateSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetCertificateSuccess implements FeedbackState {
  const factory _GetCertificateSuccess(
          final GetCertificateResponseModel certificate) =
      _$GetCertificateSuccessImpl;

  GetCertificateResponseModel get certificate;

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCertificateSuccessImplCopyWith<_$GetCertificateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$FeedbackStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FeedbackState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(FeedbackResponseModel feedback,
            GenerateCertificateResponseModel certificate)
        feedbackSuccess,
    required TResult Function(GetCertificateResponseModel certificate)
        getCertificateSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(FeedbackResponseModel feedback,
            GenerateCertificateResponseModel certificate)?
        feedbackSuccess,
    TResult? Function(GetCertificateResponseModel certificate)?
        getCertificateSuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(FeedbackResponseModel feedback,
            GenerateCertificateResponseModel certificate)?
        feedbackSuccess,
    TResult Function(GetCertificateResponseModel certificate)?
        getCertificateSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FeedbackSuccess value) feedbackSuccess,
    required TResult Function(_GetCertificateSuccess value)
        getCertificateSuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FeedbackSuccess value)? feedbackSuccess,
    TResult? Function(_GetCertificateSuccess value)? getCertificateSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FeedbackSuccess value)? feedbackSuccess,
    TResult Function(_GetCertificateSuccess value)? getCertificateSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements FeedbackState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
