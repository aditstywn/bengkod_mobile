// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AnswerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AnswerRequestModel answer, int idCourse) answer,
    required TResult Function(int idCourse) finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AnswerRequestModel answer, int idCourse)? answer,
    TResult? Function(int idCourse)? finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AnswerRequestModel answer, int idCourse)? answer,
    TResult Function(int idCourse)? finish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Answer value) answer,
    required TResult Function(_Finish value) finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Answer value)? answer,
    TResult? Function(_Finish value)? finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Answer value)? answer,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerEventCopyWith<$Res> {
  factory $AnswerEventCopyWith(
          AnswerEvent value, $Res Function(AnswerEvent) then) =
      _$AnswerEventCopyWithImpl<$Res, AnswerEvent>;
}

/// @nodoc
class _$AnswerEventCopyWithImpl<$Res, $Val extends AnswerEvent>
    implements $AnswerEventCopyWith<$Res> {
  _$AnswerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnswerEvent
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
    extends _$AnswerEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnswerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AnswerEvent.started()';
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
    required TResult Function(AnswerRequestModel answer, int idCourse) answer,
    required TResult Function(int idCourse) finish,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AnswerRequestModel answer, int idCourse)? answer,
    TResult? Function(int idCourse)? finish,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AnswerRequestModel answer, int idCourse)? answer,
    TResult Function(int idCourse)? finish,
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
    required TResult Function(_Answer value) answer,
    required TResult Function(_Finish value) finish,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Answer value)? answer,
    TResult? Function(_Finish value)? finish,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Answer value)? answer,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AnswerEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AnswerImplCopyWith<$Res> {
  factory _$$AnswerImplCopyWith(
          _$AnswerImpl value, $Res Function(_$AnswerImpl) then) =
      __$$AnswerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AnswerRequestModel answer, int idCourse});
}

/// @nodoc
class __$$AnswerImplCopyWithImpl<$Res>
    extends _$AnswerEventCopyWithImpl<$Res, _$AnswerImpl>
    implements _$$AnswerImplCopyWith<$Res> {
  __$$AnswerImplCopyWithImpl(
      _$AnswerImpl _value, $Res Function(_$AnswerImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnswerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? idCourse = null,
  }) {
    return _then(_$AnswerImpl(
      null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as AnswerRequestModel,
      null == idCourse
          ? _value.idCourse
          : idCourse // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AnswerImpl implements _Answer {
  const _$AnswerImpl(this.answer, this.idCourse);

  @override
  final AnswerRequestModel answer;
  @override
  final int idCourse;

  @override
  String toString() {
    return 'AnswerEvent.answer(answer: $answer, idCourse: $idCourse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerImpl &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.idCourse, idCourse) ||
                other.idCourse == idCourse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answer, idCourse);

  /// Create a copy of AnswerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerImplCopyWith<_$AnswerImpl> get copyWith =>
      __$$AnswerImplCopyWithImpl<_$AnswerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AnswerRequestModel answer, int idCourse) answer,
    required TResult Function(int idCourse) finish,
  }) {
    return answer(this.answer, idCourse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AnswerRequestModel answer, int idCourse)? answer,
    TResult? Function(int idCourse)? finish,
  }) {
    return answer?.call(this.answer, idCourse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AnswerRequestModel answer, int idCourse)? answer,
    TResult Function(int idCourse)? finish,
    required TResult orElse(),
  }) {
    if (answer != null) {
      return answer(this.answer, idCourse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Answer value) answer,
    required TResult Function(_Finish value) finish,
  }) {
    return answer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Answer value)? answer,
    TResult? Function(_Finish value)? finish,
  }) {
    return answer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Answer value)? answer,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) {
    if (answer != null) {
      return answer(this);
    }
    return orElse();
  }
}

abstract class _Answer implements AnswerEvent {
  const factory _Answer(final AnswerRequestModel answer, final int idCourse) =
      _$AnswerImpl;

  AnswerRequestModel get answer;
  int get idCourse;

  /// Create a copy of AnswerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerImplCopyWith<_$AnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinishImplCopyWith<$Res> {
  factory _$$FinishImplCopyWith(
          _$FinishImpl value, $Res Function(_$FinishImpl) then) =
      __$$FinishImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int idCourse});
}

/// @nodoc
class __$$FinishImplCopyWithImpl<$Res>
    extends _$AnswerEventCopyWithImpl<$Res, _$FinishImpl>
    implements _$$FinishImplCopyWith<$Res> {
  __$$FinishImplCopyWithImpl(
      _$FinishImpl _value, $Res Function(_$FinishImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnswerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCourse = null,
  }) {
    return _then(_$FinishImpl(
      null == idCourse
          ? _value.idCourse
          : idCourse // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FinishImpl implements _Finish {
  const _$FinishImpl(this.idCourse);

  @override
  final int idCourse;

  @override
  String toString() {
    return 'AnswerEvent.finish(idCourse: $idCourse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishImpl &&
            (identical(other.idCourse, idCourse) ||
                other.idCourse == idCourse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idCourse);

  /// Create a copy of AnswerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinishImplCopyWith<_$FinishImpl> get copyWith =>
      __$$FinishImplCopyWithImpl<_$FinishImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AnswerRequestModel answer, int idCourse) answer,
    required TResult Function(int idCourse) finish,
  }) {
    return finish(idCourse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AnswerRequestModel answer, int idCourse)? answer,
    TResult? Function(int idCourse)? finish,
  }) {
    return finish?.call(idCourse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AnswerRequestModel answer, int idCourse)? answer,
    TResult Function(int idCourse)? finish,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(idCourse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Answer value) answer,
    required TResult Function(_Finish value) finish,
  }) {
    return finish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Answer value)? answer,
    TResult? Function(_Finish value)? finish,
  }) {
    return finish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Answer value)? answer,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(this);
    }
    return orElse();
  }
}

abstract class _Finish implements AnswerEvent {
  const factory _Finish(final int idCourse) = _$FinishImpl;

  int get idCourse;

  /// Create a copy of AnswerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinishImplCopyWith<_$FinishImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AnswerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AnswerResponseModel answer) answerSuccess,
    required TResult Function(FinishAnswerResponseModel finish) finishAnswer,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AnswerResponseModel answer)? answerSuccess,
    TResult? Function(FinishAnswerResponseModel finish)? finishAnswer,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AnswerResponseModel answer)? answerSuccess,
    TResult Function(FinishAnswerResponseModel finish)? finishAnswer,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AnswerSuccess value) answerSuccess,
    required TResult Function(_FinishAnswer value) finishAnswer,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AnswerSuccess value)? answerSuccess,
    TResult? Function(_FinishAnswer value)? finishAnswer,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AnswerSuccess value)? answerSuccess,
    TResult Function(_FinishAnswer value)? finishAnswer,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerStateCopyWith<$Res> {
  factory $AnswerStateCopyWith(
          AnswerState value, $Res Function(AnswerState) then) =
      _$AnswerStateCopyWithImpl<$Res, AnswerState>;
}

/// @nodoc
class _$AnswerStateCopyWithImpl<$Res, $Val extends AnswerState>
    implements $AnswerStateCopyWith<$Res> {
  _$AnswerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnswerState
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
    extends _$AnswerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnswerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AnswerState.initial()';
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
    required TResult Function(AnswerResponseModel answer) answerSuccess,
    required TResult Function(FinishAnswerResponseModel finish) finishAnswer,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AnswerResponseModel answer)? answerSuccess,
    TResult? Function(FinishAnswerResponseModel finish)? finishAnswer,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AnswerResponseModel answer)? answerSuccess,
    TResult Function(FinishAnswerResponseModel finish)? finishAnswer,
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
    required TResult Function(_AnswerSuccess value) answerSuccess,
    required TResult Function(_FinishAnswer value) finishAnswer,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AnswerSuccess value)? answerSuccess,
    TResult? Function(_FinishAnswer value)? finishAnswer,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AnswerSuccess value)? answerSuccess,
    TResult Function(_FinishAnswer value)? finishAnswer,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AnswerState {
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
    extends _$AnswerStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnswerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AnswerState.loading()';
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
    required TResult Function(AnswerResponseModel answer) answerSuccess,
    required TResult Function(FinishAnswerResponseModel finish) finishAnswer,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AnswerResponseModel answer)? answerSuccess,
    TResult? Function(FinishAnswerResponseModel finish)? finishAnswer,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AnswerResponseModel answer)? answerSuccess,
    TResult Function(FinishAnswerResponseModel finish)? finishAnswer,
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
    required TResult Function(_AnswerSuccess value) answerSuccess,
    required TResult Function(_FinishAnswer value) finishAnswer,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AnswerSuccess value)? answerSuccess,
    TResult? Function(_FinishAnswer value)? finishAnswer,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AnswerSuccess value)? answerSuccess,
    TResult Function(_FinishAnswer value)? finishAnswer,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AnswerState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$AnswerSuccessImplCopyWith<$Res> {
  factory _$$AnswerSuccessImplCopyWith(
          _$AnswerSuccessImpl value, $Res Function(_$AnswerSuccessImpl) then) =
      __$$AnswerSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AnswerResponseModel answer});
}

/// @nodoc
class __$$AnswerSuccessImplCopyWithImpl<$Res>
    extends _$AnswerStateCopyWithImpl<$Res, _$AnswerSuccessImpl>
    implements _$$AnswerSuccessImplCopyWith<$Res> {
  __$$AnswerSuccessImplCopyWithImpl(
      _$AnswerSuccessImpl _value, $Res Function(_$AnswerSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnswerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
  }) {
    return _then(_$AnswerSuccessImpl(
      null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as AnswerResponseModel,
    ));
  }
}

/// @nodoc

class _$AnswerSuccessImpl implements _AnswerSuccess {
  const _$AnswerSuccessImpl(this.answer);

  @override
  final AnswerResponseModel answer;

  @override
  String toString() {
    return 'AnswerState.answerSuccess(answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerSuccessImpl &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answer);

  /// Create a copy of AnswerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerSuccessImplCopyWith<_$AnswerSuccessImpl> get copyWith =>
      __$$AnswerSuccessImplCopyWithImpl<_$AnswerSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AnswerResponseModel answer) answerSuccess,
    required TResult Function(FinishAnswerResponseModel finish) finishAnswer,
    required TResult Function(String message) error,
  }) {
    return answerSuccess(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AnswerResponseModel answer)? answerSuccess,
    TResult? Function(FinishAnswerResponseModel finish)? finishAnswer,
    TResult? Function(String message)? error,
  }) {
    return answerSuccess?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AnswerResponseModel answer)? answerSuccess,
    TResult Function(FinishAnswerResponseModel finish)? finishAnswer,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (answerSuccess != null) {
      return answerSuccess(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AnswerSuccess value) answerSuccess,
    required TResult Function(_FinishAnswer value) finishAnswer,
    required TResult Function(_Error value) error,
  }) {
    return answerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AnswerSuccess value)? answerSuccess,
    TResult? Function(_FinishAnswer value)? finishAnswer,
    TResult? Function(_Error value)? error,
  }) {
    return answerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AnswerSuccess value)? answerSuccess,
    TResult Function(_FinishAnswer value)? finishAnswer,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (answerSuccess != null) {
      return answerSuccess(this);
    }
    return orElse();
  }
}

abstract class _AnswerSuccess implements AnswerState {
  const factory _AnswerSuccess(final AnswerResponseModel answer) =
      _$AnswerSuccessImpl;

  AnswerResponseModel get answer;

  /// Create a copy of AnswerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerSuccessImplCopyWith<_$AnswerSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinishAnswerImplCopyWith<$Res> {
  factory _$$FinishAnswerImplCopyWith(
          _$FinishAnswerImpl value, $Res Function(_$FinishAnswerImpl) then) =
      __$$FinishAnswerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FinishAnswerResponseModel finish});
}

/// @nodoc
class __$$FinishAnswerImplCopyWithImpl<$Res>
    extends _$AnswerStateCopyWithImpl<$Res, _$FinishAnswerImpl>
    implements _$$FinishAnswerImplCopyWith<$Res> {
  __$$FinishAnswerImplCopyWithImpl(
      _$FinishAnswerImpl _value, $Res Function(_$FinishAnswerImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnswerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finish = null,
  }) {
    return _then(_$FinishAnswerImpl(
      null == finish
          ? _value.finish
          : finish // ignore: cast_nullable_to_non_nullable
              as FinishAnswerResponseModel,
    ));
  }
}

/// @nodoc

class _$FinishAnswerImpl implements _FinishAnswer {
  const _$FinishAnswerImpl(this.finish);

  @override
  final FinishAnswerResponseModel finish;

  @override
  String toString() {
    return 'AnswerState.finishAnswer(finish: $finish)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishAnswerImpl &&
            (identical(other.finish, finish) || other.finish == finish));
  }

  @override
  int get hashCode => Object.hash(runtimeType, finish);

  /// Create a copy of AnswerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinishAnswerImplCopyWith<_$FinishAnswerImpl> get copyWith =>
      __$$FinishAnswerImplCopyWithImpl<_$FinishAnswerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AnswerResponseModel answer) answerSuccess,
    required TResult Function(FinishAnswerResponseModel finish) finishAnswer,
    required TResult Function(String message) error,
  }) {
    return finishAnswer(finish);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AnswerResponseModel answer)? answerSuccess,
    TResult? Function(FinishAnswerResponseModel finish)? finishAnswer,
    TResult? Function(String message)? error,
  }) {
    return finishAnswer?.call(finish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AnswerResponseModel answer)? answerSuccess,
    TResult Function(FinishAnswerResponseModel finish)? finishAnswer,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (finishAnswer != null) {
      return finishAnswer(finish);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AnswerSuccess value) answerSuccess,
    required TResult Function(_FinishAnswer value) finishAnswer,
    required TResult Function(_Error value) error,
  }) {
    return finishAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AnswerSuccess value)? answerSuccess,
    TResult? Function(_FinishAnswer value)? finishAnswer,
    TResult? Function(_Error value)? error,
  }) {
    return finishAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AnswerSuccess value)? answerSuccess,
    TResult Function(_FinishAnswer value)? finishAnswer,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (finishAnswer != null) {
      return finishAnswer(this);
    }
    return orElse();
  }
}

abstract class _FinishAnswer implements AnswerState {
  const factory _FinishAnswer(final FinishAnswerResponseModel finish) =
      _$FinishAnswerImpl;

  FinishAnswerResponseModel get finish;

  /// Create a copy of AnswerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinishAnswerImplCopyWith<_$FinishAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$AnswerStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnswerState
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
    return 'AnswerState.error(message: $message)';
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

  /// Create a copy of AnswerState
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
    required TResult Function(AnswerResponseModel answer) answerSuccess,
    required TResult Function(FinishAnswerResponseModel finish) finishAnswer,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AnswerResponseModel answer)? answerSuccess,
    TResult? Function(FinishAnswerResponseModel finish)? finishAnswer,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AnswerResponseModel answer)? answerSuccess,
    TResult Function(FinishAnswerResponseModel finish)? finishAnswer,
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
    required TResult Function(_AnswerSuccess value) answerSuccess,
    required TResult Function(_FinishAnswer value) finishAnswer,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AnswerSuccess value)? answerSuccess,
    TResult? Function(_FinishAnswer value)? finishAnswer,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AnswerSuccess value)? answerSuccess,
    TResult Function(_FinishAnswer value)? finishAnswer,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AnswerState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of AnswerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
