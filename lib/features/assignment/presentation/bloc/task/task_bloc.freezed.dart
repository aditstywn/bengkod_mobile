// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UploadTaskRequestModel uploadTaskRequestModel,
            int idClass, int idAssignmenrt)
        uploadTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UploadTaskRequestModel uploadTaskRequestModel,
            int idClass, int idAssignmenrt)?
        uploadTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UploadTaskRequestModel uploadTaskRequestModel, int idClass,
            int idAssignmenrt)?
        uploadTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UploadTask value) uploadTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UploadTask value)? uploadTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UploadTask value)? uploadTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskEvent
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
    extends _$TaskEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'TaskEvent.started()';
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
    required TResult Function(UploadTaskRequestModel uploadTaskRequestModel,
            int idClass, int idAssignmenrt)
        uploadTask,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UploadTaskRequestModel uploadTaskRequestModel,
            int idClass, int idAssignmenrt)?
        uploadTask,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UploadTaskRequestModel uploadTaskRequestModel, int idClass,
            int idAssignmenrt)?
        uploadTask,
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
    required TResult Function(_UploadTask value) uploadTask,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UploadTask value)? uploadTask,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UploadTask value)? uploadTask,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TaskEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$UploadTaskImplCopyWith<$Res> {
  factory _$$UploadTaskImplCopyWith(
          _$UploadTaskImpl value, $Res Function(_$UploadTaskImpl) then) =
      __$$UploadTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {UploadTaskRequestModel uploadTaskRequestModel,
      int idClass,
      int idAssignmenrt});
}

/// @nodoc
class __$$UploadTaskImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$UploadTaskImpl>
    implements _$$UploadTaskImplCopyWith<$Res> {
  __$$UploadTaskImplCopyWithImpl(
      _$UploadTaskImpl _value, $Res Function(_$UploadTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploadTaskRequestModel = null,
    Object? idClass = null,
    Object? idAssignmenrt = null,
  }) {
    return _then(_$UploadTaskImpl(
      null == uploadTaskRequestModel
          ? _value.uploadTaskRequestModel
          : uploadTaskRequestModel // ignore: cast_nullable_to_non_nullable
              as UploadTaskRequestModel,
      null == idClass
          ? _value.idClass
          : idClass // ignore: cast_nullable_to_non_nullable
              as int,
      null == idAssignmenrt
          ? _value.idAssignmenrt
          : idAssignmenrt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UploadTaskImpl implements _UploadTask {
  const _$UploadTaskImpl(
      this.uploadTaskRequestModel, this.idClass, this.idAssignmenrt);

  @override
  final UploadTaskRequestModel uploadTaskRequestModel;
  @override
  final int idClass;
  @override
  final int idAssignmenrt;

  @override
  String toString() {
    return 'TaskEvent.uploadTask(uploadTaskRequestModel: $uploadTaskRequestModel, idClass: $idClass, idAssignmenrt: $idAssignmenrt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadTaskImpl &&
            (identical(other.uploadTaskRequestModel, uploadTaskRequestModel) ||
                other.uploadTaskRequestModel == uploadTaskRequestModel) &&
            (identical(other.idClass, idClass) || other.idClass == idClass) &&
            (identical(other.idAssignmenrt, idAssignmenrt) ||
                other.idAssignmenrt == idAssignmenrt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, uploadTaskRequestModel, idClass, idAssignmenrt);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadTaskImplCopyWith<_$UploadTaskImpl> get copyWith =>
      __$$UploadTaskImplCopyWithImpl<_$UploadTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UploadTaskRequestModel uploadTaskRequestModel,
            int idClass, int idAssignmenrt)
        uploadTask,
  }) {
    return uploadTask(uploadTaskRequestModel, idClass, idAssignmenrt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UploadTaskRequestModel uploadTaskRequestModel,
            int idClass, int idAssignmenrt)?
        uploadTask,
  }) {
    return uploadTask?.call(uploadTaskRequestModel, idClass, idAssignmenrt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UploadTaskRequestModel uploadTaskRequestModel, int idClass,
            int idAssignmenrt)?
        uploadTask,
    required TResult orElse(),
  }) {
    if (uploadTask != null) {
      return uploadTask(uploadTaskRequestModel, idClass, idAssignmenrt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UploadTask value) uploadTask,
  }) {
    return uploadTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UploadTask value)? uploadTask,
  }) {
    return uploadTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UploadTask value)? uploadTask,
    required TResult orElse(),
  }) {
    if (uploadTask != null) {
      return uploadTask(this);
    }
    return orElse();
  }
}

abstract class _UploadTask implements TaskEvent {
  const factory _UploadTask(final UploadTaskRequestModel uploadTaskRequestModel,
      final int idClass, final int idAssignmenrt) = _$UploadTaskImpl;

  UploadTaskRequestModel get uploadTaskRequestModel;
  int get idClass;
  int get idAssignmenrt;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadTaskImplCopyWith<_$UploadTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UploadTaskResponseModel ploadTaskResponseModel)
        uploadTaskSuccess,
    required TResult Function(
            SubmitAssignmentResponseModel submitAssignmentResponseModel)
        submitTaskSuccess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UploadTaskResponseModel ploadTaskResponseModel)?
        uploadTaskSuccess,
    TResult? Function(
            SubmitAssignmentResponseModel submitAssignmentResponseModel)?
        submitTaskSuccess,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UploadTaskResponseModel ploadTaskResponseModel)?
        uploadTaskSuccess,
    TResult Function(
            SubmitAssignmentResponseModel submitAssignmentResponseModel)?
        submitTaskSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UploadTaskSuccess value) uploadTaskSuccess,
    required TResult Function(_SubmitTaskSuccess value) submitTaskSuccess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UploadTaskSuccess value)? uploadTaskSuccess,
    TResult? Function(_SubmitTaskSuccess value)? submitTaskSuccess,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UploadTaskSuccess value)? uploadTaskSuccess,
    TResult Function(_SubmitTaskSuccess value)? submitTaskSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskState
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
    extends _$TaskStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TaskState.initial()';
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
    required TResult Function(UploadTaskResponseModel ploadTaskResponseModel)
        uploadTaskSuccess,
    required TResult Function(
            SubmitAssignmentResponseModel submitAssignmentResponseModel)
        submitTaskSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UploadTaskResponseModel ploadTaskResponseModel)?
        uploadTaskSuccess,
    TResult? Function(
            SubmitAssignmentResponseModel submitAssignmentResponseModel)?
        submitTaskSuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UploadTaskResponseModel ploadTaskResponseModel)?
        uploadTaskSuccess,
    TResult Function(
            SubmitAssignmentResponseModel submitAssignmentResponseModel)?
        submitTaskSuccess,
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
    required TResult Function(_UploadTaskSuccess value) uploadTaskSuccess,
    required TResult Function(_SubmitTaskSuccess value) submitTaskSuccess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UploadTaskSuccess value)? uploadTaskSuccess,
    TResult? Function(_SubmitTaskSuccess value)? submitTaskSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UploadTaskSuccess value)? uploadTaskSuccess,
    TResult Function(_SubmitTaskSuccess value)? submitTaskSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TaskState {
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
    extends _$TaskStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'TaskState.loading()';
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
    required TResult Function(UploadTaskResponseModel ploadTaskResponseModel)
        uploadTaskSuccess,
    required TResult Function(
            SubmitAssignmentResponseModel submitAssignmentResponseModel)
        submitTaskSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UploadTaskResponseModel ploadTaskResponseModel)?
        uploadTaskSuccess,
    TResult? Function(
            SubmitAssignmentResponseModel submitAssignmentResponseModel)?
        submitTaskSuccess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UploadTaskResponseModel ploadTaskResponseModel)?
        uploadTaskSuccess,
    TResult Function(
            SubmitAssignmentResponseModel submitAssignmentResponseModel)?
        submitTaskSuccess,
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
    required TResult Function(_UploadTaskSuccess value) uploadTaskSuccess,
    required TResult Function(_SubmitTaskSuccess value) submitTaskSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UploadTaskSuccess value)? uploadTaskSuccess,
    TResult? Function(_SubmitTaskSuccess value)? submitTaskSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UploadTaskSuccess value)? uploadTaskSuccess,
    TResult Function(_SubmitTaskSuccess value)? submitTaskSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TaskState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$UploadTaskSuccessImplCopyWith<$Res> {
  factory _$$UploadTaskSuccessImplCopyWith(_$UploadTaskSuccessImpl value,
          $Res Function(_$UploadTaskSuccessImpl) then) =
      __$$UploadTaskSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UploadTaskResponseModel ploadTaskResponseModel});
}

/// @nodoc
class __$$UploadTaskSuccessImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$UploadTaskSuccessImpl>
    implements _$$UploadTaskSuccessImplCopyWith<$Res> {
  __$$UploadTaskSuccessImplCopyWithImpl(_$UploadTaskSuccessImpl _value,
      $Res Function(_$UploadTaskSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ploadTaskResponseModel = null,
  }) {
    return _then(_$UploadTaskSuccessImpl(
      null == ploadTaskResponseModel
          ? _value.ploadTaskResponseModel
          : ploadTaskResponseModel // ignore: cast_nullable_to_non_nullable
              as UploadTaskResponseModel,
    ));
  }
}

/// @nodoc

class _$UploadTaskSuccessImpl implements _UploadTaskSuccess {
  const _$UploadTaskSuccessImpl(this.ploadTaskResponseModel);

  @override
  final UploadTaskResponseModel ploadTaskResponseModel;

  @override
  String toString() {
    return 'TaskState.uploadTaskSuccess(ploadTaskResponseModel: $ploadTaskResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadTaskSuccessImpl &&
            (identical(other.ploadTaskResponseModel, ploadTaskResponseModel) ||
                other.ploadTaskResponseModel == ploadTaskResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ploadTaskResponseModel);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadTaskSuccessImplCopyWith<_$UploadTaskSuccessImpl> get copyWith =>
      __$$UploadTaskSuccessImplCopyWithImpl<_$UploadTaskSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UploadTaskResponseModel ploadTaskResponseModel)
        uploadTaskSuccess,
    required TResult Function(
            SubmitAssignmentResponseModel submitAssignmentResponseModel)
        submitTaskSuccess,
    required TResult Function(String message) error,
  }) {
    return uploadTaskSuccess(ploadTaskResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UploadTaskResponseModel ploadTaskResponseModel)?
        uploadTaskSuccess,
    TResult? Function(
            SubmitAssignmentResponseModel submitAssignmentResponseModel)?
        submitTaskSuccess,
    TResult? Function(String message)? error,
  }) {
    return uploadTaskSuccess?.call(ploadTaskResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UploadTaskResponseModel ploadTaskResponseModel)?
        uploadTaskSuccess,
    TResult Function(
            SubmitAssignmentResponseModel submitAssignmentResponseModel)?
        submitTaskSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (uploadTaskSuccess != null) {
      return uploadTaskSuccess(ploadTaskResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UploadTaskSuccess value) uploadTaskSuccess,
    required TResult Function(_SubmitTaskSuccess value) submitTaskSuccess,
    required TResult Function(_Error value) error,
  }) {
    return uploadTaskSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UploadTaskSuccess value)? uploadTaskSuccess,
    TResult? Function(_SubmitTaskSuccess value)? submitTaskSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return uploadTaskSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UploadTaskSuccess value)? uploadTaskSuccess,
    TResult Function(_SubmitTaskSuccess value)? submitTaskSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (uploadTaskSuccess != null) {
      return uploadTaskSuccess(this);
    }
    return orElse();
  }
}

abstract class _UploadTaskSuccess implements TaskState {
  const factory _UploadTaskSuccess(
          final UploadTaskResponseModel ploadTaskResponseModel) =
      _$UploadTaskSuccessImpl;

  UploadTaskResponseModel get ploadTaskResponseModel;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadTaskSuccessImplCopyWith<_$UploadTaskSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitTaskSuccessImplCopyWith<$Res> {
  factory _$$SubmitTaskSuccessImplCopyWith(_$SubmitTaskSuccessImpl value,
          $Res Function(_$SubmitTaskSuccessImpl) then) =
      __$$SubmitTaskSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SubmitAssignmentResponseModel submitAssignmentResponseModel});
}

/// @nodoc
class __$$SubmitTaskSuccessImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$SubmitTaskSuccessImpl>
    implements _$$SubmitTaskSuccessImplCopyWith<$Res> {
  __$$SubmitTaskSuccessImplCopyWithImpl(_$SubmitTaskSuccessImpl _value,
      $Res Function(_$SubmitTaskSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitAssignmentResponseModel = null,
  }) {
    return _then(_$SubmitTaskSuccessImpl(
      null == submitAssignmentResponseModel
          ? _value.submitAssignmentResponseModel
          : submitAssignmentResponseModel // ignore: cast_nullable_to_non_nullable
              as SubmitAssignmentResponseModel,
    ));
  }
}

/// @nodoc

class _$SubmitTaskSuccessImpl implements _SubmitTaskSuccess {
  const _$SubmitTaskSuccessImpl(this.submitAssignmentResponseModel);

  @override
  final SubmitAssignmentResponseModel submitAssignmentResponseModel;

  @override
  String toString() {
    return 'TaskState.submitTaskSuccess(submitAssignmentResponseModel: $submitAssignmentResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitTaskSuccessImpl &&
            (identical(other.submitAssignmentResponseModel,
                    submitAssignmentResponseModel) ||
                other.submitAssignmentResponseModel ==
                    submitAssignmentResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, submitAssignmentResponseModel);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitTaskSuccessImplCopyWith<_$SubmitTaskSuccessImpl> get copyWith =>
      __$$SubmitTaskSuccessImplCopyWithImpl<_$SubmitTaskSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UploadTaskResponseModel ploadTaskResponseModel)
        uploadTaskSuccess,
    required TResult Function(
            SubmitAssignmentResponseModel submitAssignmentResponseModel)
        submitTaskSuccess,
    required TResult Function(String message) error,
  }) {
    return submitTaskSuccess(submitAssignmentResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UploadTaskResponseModel ploadTaskResponseModel)?
        uploadTaskSuccess,
    TResult? Function(
            SubmitAssignmentResponseModel submitAssignmentResponseModel)?
        submitTaskSuccess,
    TResult? Function(String message)? error,
  }) {
    return submitTaskSuccess?.call(submitAssignmentResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UploadTaskResponseModel ploadTaskResponseModel)?
        uploadTaskSuccess,
    TResult Function(
            SubmitAssignmentResponseModel submitAssignmentResponseModel)?
        submitTaskSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (submitTaskSuccess != null) {
      return submitTaskSuccess(submitAssignmentResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UploadTaskSuccess value) uploadTaskSuccess,
    required TResult Function(_SubmitTaskSuccess value) submitTaskSuccess,
    required TResult Function(_Error value) error,
  }) {
    return submitTaskSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UploadTaskSuccess value)? uploadTaskSuccess,
    TResult? Function(_SubmitTaskSuccess value)? submitTaskSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return submitTaskSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UploadTaskSuccess value)? uploadTaskSuccess,
    TResult Function(_SubmitTaskSuccess value)? submitTaskSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (submitTaskSuccess != null) {
      return submitTaskSuccess(this);
    }
    return orElse();
  }
}

abstract class _SubmitTaskSuccess implements TaskState {
  const factory _SubmitTaskSuccess(
          final SubmitAssignmentResponseModel submitAssignmentResponseModel) =
      _$SubmitTaskSuccessImpl;

  SubmitAssignmentResponseModel get submitAssignmentResponseModel;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitTaskSuccessImplCopyWith<_$SubmitTaskSuccessImpl> get copyWith =>
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
    extends _$TaskStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
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
    return 'TaskState.error(message: $message)';
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

  /// Create a copy of TaskState
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
    required TResult Function(UploadTaskResponseModel ploadTaskResponseModel)
        uploadTaskSuccess,
    required TResult Function(
            SubmitAssignmentResponseModel submitAssignmentResponseModel)
        submitTaskSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UploadTaskResponseModel ploadTaskResponseModel)?
        uploadTaskSuccess,
    TResult? Function(
            SubmitAssignmentResponseModel submitAssignmentResponseModel)?
        submitTaskSuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UploadTaskResponseModel ploadTaskResponseModel)?
        uploadTaskSuccess,
    TResult Function(
            SubmitAssignmentResponseModel submitAssignmentResponseModel)?
        submitTaskSuccess,
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
    required TResult Function(_UploadTaskSuccess value) uploadTaskSuccess,
    required TResult Function(_SubmitTaskSuccess value) submitTaskSuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UploadTaskSuccess value)? uploadTaskSuccess,
    TResult? Function(_SubmitTaskSuccess value)? submitTaskSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UploadTaskSuccess value)? uploadTaskSuccess,
    TResult Function(_SubmitTaskSuccess value)? submitTaskSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TaskState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
