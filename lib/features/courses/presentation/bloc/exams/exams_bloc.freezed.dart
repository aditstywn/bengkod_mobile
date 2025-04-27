// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exams_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExamsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int idCourse, int? page) createExams,
    required TResult Function(int idCourse) detailInformationExams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idCourse, int? page)? createExams,
    TResult? Function(int idCourse)? detailInformationExams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idCourse, int? page)? createExams,
    TResult Function(int idCourse)? detailInformationExams,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateExams value) createExams,
    required TResult Function(_DetailInformationExams value)
        detailInformationExams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateExams value)? createExams,
    TResult? Function(_DetailInformationExams value)? detailInformationExams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateExams value)? createExams,
    TResult Function(_DetailInformationExams value)? detailInformationExams,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamsEventCopyWith<$Res> {
  factory $ExamsEventCopyWith(
          ExamsEvent value, $Res Function(ExamsEvent) then) =
      _$ExamsEventCopyWithImpl<$Res, ExamsEvent>;
}

/// @nodoc
class _$ExamsEventCopyWithImpl<$Res, $Val extends ExamsEvent>
    implements $ExamsEventCopyWith<$Res> {
  _$ExamsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamsEvent
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
    extends _$ExamsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ExamsEvent.started()';
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
    required TResult Function(int idCourse, int? page) createExams,
    required TResult Function(int idCourse) detailInformationExams,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idCourse, int? page)? createExams,
    TResult? Function(int idCourse)? detailInformationExams,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idCourse, int? page)? createExams,
    TResult Function(int idCourse)? detailInformationExams,
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
    required TResult Function(_CreateExams value) createExams,
    required TResult Function(_DetailInformationExams value)
        detailInformationExams,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateExams value)? createExams,
    TResult? Function(_DetailInformationExams value)? detailInformationExams,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateExams value)? createExams,
    TResult Function(_DetailInformationExams value)? detailInformationExams,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ExamsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CreateExamsImplCopyWith<$Res> {
  factory _$$CreateExamsImplCopyWith(
          _$CreateExamsImpl value, $Res Function(_$CreateExamsImpl) then) =
      __$$CreateExamsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int idCourse, int? page});
}

/// @nodoc
class __$$CreateExamsImplCopyWithImpl<$Res>
    extends _$ExamsEventCopyWithImpl<$Res, _$CreateExamsImpl>
    implements _$$CreateExamsImplCopyWith<$Res> {
  __$$CreateExamsImplCopyWithImpl(
      _$CreateExamsImpl _value, $Res Function(_$CreateExamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCourse = null,
    Object? page = freezed,
  }) {
    return _then(_$CreateExamsImpl(
      null == idCourse
          ? _value.idCourse
          : idCourse // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$CreateExamsImpl implements _CreateExams {
  const _$CreateExamsImpl(this.idCourse, this.page);

  @override
  final int idCourse;
  @override
  final int? page;

  @override
  String toString() {
    return 'ExamsEvent.createExams(idCourse: $idCourse, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateExamsImpl &&
            (identical(other.idCourse, idCourse) ||
                other.idCourse == idCourse) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idCourse, page);

  /// Create a copy of ExamsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateExamsImplCopyWith<_$CreateExamsImpl> get copyWith =>
      __$$CreateExamsImplCopyWithImpl<_$CreateExamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int idCourse, int? page) createExams,
    required TResult Function(int idCourse) detailInformationExams,
  }) {
    return createExams(idCourse, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idCourse, int? page)? createExams,
    TResult? Function(int idCourse)? detailInformationExams,
  }) {
    return createExams?.call(idCourse, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idCourse, int? page)? createExams,
    TResult Function(int idCourse)? detailInformationExams,
    required TResult orElse(),
  }) {
    if (createExams != null) {
      return createExams(idCourse, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateExams value) createExams,
    required TResult Function(_DetailInformationExams value)
        detailInformationExams,
  }) {
    return createExams(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateExams value)? createExams,
    TResult? Function(_DetailInformationExams value)? detailInformationExams,
  }) {
    return createExams?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateExams value)? createExams,
    TResult Function(_DetailInformationExams value)? detailInformationExams,
    required TResult orElse(),
  }) {
    if (createExams != null) {
      return createExams(this);
    }
    return orElse();
  }
}

abstract class _CreateExams implements ExamsEvent {
  const factory _CreateExams(final int idCourse, final int? page) =
      _$CreateExamsImpl;

  int get idCourse;
  int? get page;

  /// Create a copy of ExamsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateExamsImplCopyWith<_$CreateExamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailInformationExamsImplCopyWith<$Res> {
  factory _$$DetailInformationExamsImplCopyWith(
          _$DetailInformationExamsImpl value,
          $Res Function(_$DetailInformationExamsImpl) then) =
      __$$DetailInformationExamsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int idCourse});
}

/// @nodoc
class __$$DetailInformationExamsImplCopyWithImpl<$Res>
    extends _$ExamsEventCopyWithImpl<$Res, _$DetailInformationExamsImpl>
    implements _$$DetailInformationExamsImplCopyWith<$Res> {
  __$$DetailInformationExamsImplCopyWithImpl(
      _$DetailInformationExamsImpl _value,
      $Res Function(_$DetailInformationExamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCourse = null,
  }) {
    return _then(_$DetailInformationExamsImpl(
      null == idCourse
          ? _value.idCourse
          : idCourse // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DetailInformationExamsImpl implements _DetailInformationExams {
  const _$DetailInformationExamsImpl(this.idCourse);

  @override
  final int idCourse;

  @override
  String toString() {
    return 'ExamsEvent.detailInformationExams(idCourse: $idCourse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailInformationExamsImpl &&
            (identical(other.idCourse, idCourse) ||
                other.idCourse == idCourse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idCourse);

  /// Create a copy of ExamsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailInformationExamsImplCopyWith<_$DetailInformationExamsImpl>
      get copyWith => __$$DetailInformationExamsImplCopyWithImpl<
          _$DetailInformationExamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int idCourse, int? page) createExams,
    required TResult Function(int idCourse) detailInformationExams,
  }) {
    return detailInformationExams(idCourse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idCourse, int? page)? createExams,
    TResult? Function(int idCourse)? detailInformationExams,
  }) {
    return detailInformationExams?.call(idCourse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idCourse, int? page)? createExams,
    TResult Function(int idCourse)? detailInformationExams,
    required TResult orElse(),
  }) {
    if (detailInformationExams != null) {
      return detailInformationExams(idCourse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateExams value) createExams,
    required TResult Function(_DetailInformationExams value)
        detailInformationExams,
  }) {
    return detailInformationExams(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateExams value)? createExams,
    TResult? Function(_DetailInformationExams value)? detailInformationExams,
  }) {
    return detailInformationExams?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateExams value)? createExams,
    TResult Function(_DetailInformationExams value)? detailInformationExams,
    required TResult orElse(),
  }) {
    if (detailInformationExams != null) {
      return detailInformationExams(this);
    }
    return orElse();
  }
}

abstract class _DetailInformationExams implements ExamsEvent {
  const factory _DetailInformationExams(final int idCourse) =
      _$DetailInformationExamsImpl;

  int get idCourse;

  /// Create a copy of ExamsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailInformationExamsImplCopyWith<_$DetailInformationExamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExamsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreateExamResponseModel cretae)
        createExamsSuccess,
    required TResult Function(StartExamResponseModel satrt) startExamsSuccess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateExamResponseModel cretae)? createExamsSuccess,
    TResult? Function(StartExamResponseModel satrt)? startExamsSuccess,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateExamResponseModel cretae)? createExamsSuccess,
    TResult Function(StartExamResponseModel satrt)? startExamsSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CreateExamsSuccess value) createExamsSuccess,
    required TResult Function(_startExamsSuccess value) startExamsSuccess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreateExamsSuccess value)? createExamsSuccess,
    TResult? Function(_startExamsSuccess value)? startExamsSuccess,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreateExamsSuccess value)? createExamsSuccess,
    TResult Function(_startExamsSuccess value)? startExamsSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamsStateCopyWith<$Res> {
  factory $ExamsStateCopyWith(
          ExamsState value, $Res Function(ExamsState) then) =
      _$ExamsStateCopyWithImpl<$Res, ExamsState>;
}

/// @nodoc
class _$ExamsStateCopyWithImpl<$Res, $Val extends ExamsState>
    implements $ExamsStateCopyWith<$Res> {
  _$ExamsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamsState
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
    extends _$ExamsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ExamsState.initial()';
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
    required TResult Function(CreateExamResponseModel cretae)
        createExamsSuccess,
    required TResult Function(StartExamResponseModel satrt) startExamsSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateExamResponseModel cretae)? createExamsSuccess,
    TResult? Function(StartExamResponseModel satrt)? startExamsSuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateExamResponseModel cretae)? createExamsSuccess,
    TResult Function(StartExamResponseModel satrt)? startExamsSuccess,
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
    required TResult Function(_CreateExamsSuccess value) createExamsSuccess,
    required TResult Function(_startExamsSuccess value) startExamsSuccess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreateExamsSuccess value)? createExamsSuccess,
    TResult? Function(_startExamsSuccess value)? startExamsSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreateExamsSuccess value)? createExamsSuccess,
    TResult Function(_startExamsSuccess value)? startExamsSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ExamsState {
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
    extends _$ExamsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ExamsState.loading()';
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
    required TResult Function(CreateExamResponseModel cretae)
        createExamsSuccess,
    required TResult Function(StartExamResponseModel satrt) startExamsSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateExamResponseModel cretae)? createExamsSuccess,
    TResult? Function(StartExamResponseModel satrt)? startExamsSuccess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateExamResponseModel cretae)? createExamsSuccess,
    TResult Function(StartExamResponseModel satrt)? startExamsSuccess,
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
    required TResult Function(_CreateExamsSuccess value) createExamsSuccess,
    required TResult Function(_startExamsSuccess value) startExamsSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreateExamsSuccess value)? createExamsSuccess,
    TResult? Function(_startExamsSuccess value)? startExamsSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreateExamsSuccess value)? createExamsSuccess,
    TResult Function(_startExamsSuccess value)? startExamsSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ExamsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$CreateExamsSuccessImplCopyWith<$Res> {
  factory _$$CreateExamsSuccessImplCopyWith(_$CreateExamsSuccessImpl value,
          $Res Function(_$CreateExamsSuccessImpl) then) =
      __$$CreateExamsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateExamResponseModel cretae});
}

/// @nodoc
class __$$CreateExamsSuccessImplCopyWithImpl<$Res>
    extends _$ExamsStateCopyWithImpl<$Res, _$CreateExamsSuccessImpl>
    implements _$$CreateExamsSuccessImplCopyWith<$Res> {
  __$$CreateExamsSuccessImplCopyWithImpl(_$CreateExamsSuccessImpl _value,
      $Res Function(_$CreateExamsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cretae = null,
  }) {
    return _then(_$CreateExamsSuccessImpl(
      null == cretae
          ? _value.cretae
          : cretae // ignore: cast_nullable_to_non_nullable
              as CreateExamResponseModel,
    ));
  }
}

/// @nodoc

class _$CreateExamsSuccessImpl implements _CreateExamsSuccess {
  const _$CreateExamsSuccessImpl(this.cretae);

  @override
  final CreateExamResponseModel cretae;

  @override
  String toString() {
    return 'ExamsState.createExamsSuccess(cretae: $cretae)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateExamsSuccessImpl &&
            (identical(other.cretae, cretae) || other.cretae == cretae));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cretae);

  /// Create a copy of ExamsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateExamsSuccessImplCopyWith<_$CreateExamsSuccessImpl> get copyWith =>
      __$$CreateExamsSuccessImplCopyWithImpl<_$CreateExamsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreateExamResponseModel cretae)
        createExamsSuccess,
    required TResult Function(StartExamResponseModel satrt) startExamsSuccess,
    required TResult Function(String message) error,
  }) {
    return createExamsSuccess(cretae);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateExamResponseModel cretae)? createExamsSuccess,
    TResult? Function(StartExamResponseModel satrt)? startExamsSuccess,
    TResult? Function(String message)? error,
  }) {
    return createExamsSuccess?.call(cretae);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateExamResponseModel cretae)? createExamsSuccess,
    TResult Function(StartExamResponseModel satrt)? startExamsSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (createExamsSuccess != null) {
      return createExamsSuccess(cretae);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CreateExamsSuccess value) createExamsSuccess,
    required TResult Function(_startExamsSuccess value) startExamsSuccess,
    required TResult Function(_Error value) error,
  }) {
    return createExamsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreateExamsSuccess value)? createExamsSuccess,
    TResult? Function(_startExamsSuccess value)? startExamsSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return createExamsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreateExamsSuccess value)? createExamsSuccess,
    TResult Function(_startExamsSuccess value)? startExamsSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (createExamsSuccess != null) {
      return createExamsSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateExamsSuccess implements ExamsState {
  const factory _CreateExamsSuccess(final CreateExamResponseModel cretae) =
      _$CreateExamsSuccessImpl;

  CreateExamResponseModel get cretae;

  /// Create a copy of ExamsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateExamsSuccessImplCopyWith<_$CreateExamsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$startExamsSuccessImplCopyWith<$Res> {
  factory _$$startExamsSuccessImplCopyWith(_$startExamsSuccessImpl value,
          $Res Function(_$startExamsSuccessImpl) then) =
      __$$startExamsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StartExamResponseModel satrt});
}

/// @nodoc
class __$$startExamsSuccessImplCopyWithImpl<$Res>
    extends _$ExamsStateCopyWithImpl<$Res, _$startExamsSuccessImpl>
    implements _$$startExamsSuccessImplCopyWith<$Res> {
  __$$startExamsSuccessImplCopyWithImpl(_$startExamsSuccessImpl _value,
      $Res Function(_$startExamsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? satrt = null,
  }) {
    return _then(_$startExamsSuccessImpl(
      null == satrt
          ? _value.satrt
          : satrt // ignore: cast_nullable_to_non_nullable
              as StartExamResponseModel,
    ));
  }
}

/// @nodoc

class _$startExamsSuccessImpl implements _startExamsSuccess {
  const _$startExamsSuccessImpl(this.satrt);

  @override
  final StartExamResponseModel satrt;

  @override
  String toString() {
    return 'ExamsState.startExamsSuccess(satrt: $satrt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$startExamsSuccessImpl &&
            (identical(other.satrt, satrt) || other.satrt == satrt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, satrt);

  /// Create a copy of ExamsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$startExamsSuccessImplCopyWith<_$startExamsSuccessImpl> get copyWith =>
      __$$startExamsSuccessImplCopyWithImpl<_$startExamsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreateExamResponseModel cretae)
        createExamsSuccess,
    required TResult Function(StartExamResponseModel satrt) startExamsSuccess,
    required TResult Function(String message) error,
  }) {
    return startExamsSuccess(satrt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateExamResponseModel cretae)? createExamsSuccess,
    TResult? Function(StartExamResponseModel satrt)? startExamsSuccess,
    TResult? Function(String message)? error,
  }) {
    return startExamsSuccess?.call(satrt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateExamResponseModel cretae)? createExamsSuccess,
    TResult Function(StartExamResponseModel satrt)? startExamsSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (startExamsSuccess != null) {
      return startExamsSuccess(satrt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CreateExamsSuccess value) createExamsSuccess,
    required TResult Function(_startExamsSuccess value) startExamsSuccess,
    required TResult Function(_Error value) error,
  }) {
    return startExamsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreateExamsSuccess value)? createExamsSuccess,
    TResult? Function(_startExamsSuccess value)? startExamsSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return startExamsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreateExamsSuccess value)? createExamsSuccess,
    TResult Function(_startExamsSuccess value)? startExamsSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (startExamsSuccess != null) {
      return startExamsSuccess(this);
    }
    return orElse();
  }
}

abstract class _startExamsSuccess implements ExamsState {
  const factory _startExamsSuccess(final StartExamResponseModel satrt) =
      _$startExamsSuccessImpl;

  StartExamResponseModel get satrt;

  /// Create a copy of ExamsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$startExamsSuccessImplCopyWith<_$startExamsSuccessImpl> get copyWith =>
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
    extends _$ExamsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamsState
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
    return 'ExamsState.error(message: $message)';
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

  /// Create a copy of ExamsState
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
    required TResult Function(CreateExamResponseModel cretae)
        createExamsSuccess,
    required TResult Function(StartExamResponseModel satrt) startExamsSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateExamResponseModel cretae)? createExamsSuccess,
    TResult? Function(StartExamResponseModel satrt)? startExamsSuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateExamResponseModel cretae)? createExamsSuccess,
    TResult Function(StartExamResponseModel satrt)? startExamsSuccess,
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
    required TResult Function(_CreateExamsSuccess value) createExamsSuccess,
    required TResult Function(_startExamsSuccess value) startExamsSuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreateExamsSuccess value)? createExamsSuccess,
    TResult? Function(_startExamsSuccess value)? startExamsSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreateExamsSuccess value)? createExamsSuccess,
    TResult Function(_startExamsSuccess value)? startExamsSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ExamsState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of ExamsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
