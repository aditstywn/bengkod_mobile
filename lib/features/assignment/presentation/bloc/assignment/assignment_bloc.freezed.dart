// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assignment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AssignmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int id) getAssignment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int id)? getAssignment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int id)? getAssignment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAssignment value) getAssignment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAssignment value)? getAssignment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAssignment value)? getAssignment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignmentEventCopyWith<$Res> {
  factory $AssignmentEventCopyWith(
          AssignmentEvent value, $Res Function(AssignmentEvent) then) =
      _$AssignmentEventCopyWithImpl<$Res, AssignmentEvent>;
}

/// @nodoc
class _$AssignmentEventCopyWithImpl<$Res, $Val extends AssignmentEvent>
    implements $AssignmentEventCopyWith<$Res> {
  _$AssignmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssignmentEvent
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
    extends _$AssignmentEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssignmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AssignmentEvent.started()';
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
    required TResult Function(int id) getAssignment,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int id)? getAssignment,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int id)? getAssignment,
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
    required TResult Function(_GetAssignment value) getAssignment,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAssignment value)? getAssignment,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAssignment value)? getAssignment,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AssignmentEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetAssignmentImplCopyWith<$Res> {
  factory _$$GetAssignmentImplCopyWith(
          _$GetAssignmentImpl value, $Res Function(_$GetAssignmentImpl) then) =
      __$$GetAssignmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetAssignmentImplCopyWithImpl<$Res>
    extends _$AssignmentEventCopyWithImpl<$Res, _$GetAssignmentImpl>
    implements _$$GetAssignmentImplCopyWith<$Res> {
  __$$GetAssignmentImplCopyWithImpl(
      _$GetAssignmentImpl _value, $Res Function(_$GetAssignmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssignmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetAssignmentImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetAssignmentImpl implements _GetAssignment {
  const _$GetAssignmentImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'AssignmentEvent.getAssignment(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAssignmentImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of AssignmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAssignmentImplCopyWith<_$GetAssignmentImpl> get copyWith =>
      __$$GetAssignmentImplCopyWithImpl<_$GetAssignmentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int id) getAssignment,
  }) {
    return getAssignment(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int id)? getAssignment,
  }) {
    return getAssignment?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int id)? getAssignment,
    required TResult orElse(),
  }) {
    if (getAssignment != null) {
      return getAssignment(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAssignment value) getAssignment,
  }) {
    return getAssignment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAssignment value)? getAssignment,
  }) {
    return getAssignment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAssignment value)? getAssignment,
    required TResult orElse(),
  }) {
    if (getAssignment != null) {
      return getAssignment(this);
    }
    return orElse();
  }
}

abstract class _GetAssignment implements AssignmentEvent {
  const factory _GetAssignment(final int id) = _$GetAssignmentImpl;

  int get id;

  /// Create a copy of AssignmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAssignmentImplCopyWith<_$GetAssignmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AssignmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AssignmentResponseModel assignmentResponseModel)
        getAssignmentSuccess,
    required TResult Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)
        getDetailAssignmentSuccess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AssignmentResponseModel assignmentResponseModel)?
        getAssignmentSuccess,
    TResult? Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AssignmentResponseModel assignmentResponseModel)?
        getAssignmentSuccess,
    TResult Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_getAssignmentSuccess value) getAssignmentSuccess,
    required TResult Function(_getDetailAssignmentSuccess value)
        getDetailAssignmentSuccess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_getAssignmentSuccess value)? getAssignmentSuccess,
    TResult? Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_getAssignmentSuccess value)? getAssignmentSuccess,
    TResult Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignmentStateCopyWith<$Res> {
  factory $AssignmentStateCopyWith(
          AssignmentState value, $Res Function(AssignmentState) then) =
      _$AssignmentStateCopyWithImpl<$Res, AssignmentState>;
}

/// @nodoc
class _$AssignmentStateCopyWithImpl<$Res, $Val extends AssignmentState>
    implements $AssignmentStateCopyWith<$Res> {
  _$AssignmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssignmentState
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
    extends _$AssignmentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssignmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AssignmentState.initial()';
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
    required TResult Function(AssignmentResponseModel assignmentResponseModel)
        getAssignmentSuccess,
    required TResult Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)
        getDetailAssignmentSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AssignmentResponseModel assignmentResponseModel)?
        getAssignmentSuccess,
    TResult? Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AssignmentResponseModel assignmentResponseModel)?
        getAssignmentSuccess,
    TResult Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
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
    required TResult Function(_getAssignmentSuccess value) getAssignmentSuccess,
    required TResult Function(_getDetailAssignmentSuccess value)
        getDetailAssignmentSuccess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_getAssignmentSuccess value)? getAssignmentSuccess,
    TResult? Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_getAssignmentSuccess value)? getAssignmentSuccess,
    TResult Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AssignmentState {
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
    extends _$AssignmentStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssignmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AssignmentState.loading()';
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
    required TResult Function(AssignmentResponseModel assignmentResponseModel)
        getAssignmentSuccess,
    required TResult Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)
        getDetailAssignmentSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AssignmentResponseModel assignmentResponseModel)?
        getAssignmentSuccess,
    TResult? Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AssignmentResponseModel assignmentResponseModel)?
        getAssignmentSuccess,
    TResult Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
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
    required TResult Function(_getAssignmentSuccess value) getAssignmentSuccess,
    required TResult Function(_getDetailAssignmentSuccess value)
        getDetailAssignmentSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_getAssignmentSuccess value)? getAssignmentSuccess,
    TResult? Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_getAssignmentSuccess value)? getAssignmentSuccess,
    TResult Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AssignmentState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$getAssignmentSuccessImplCopyWith<$Res> {
  factory _$$getAssignmentSuccessImplCopyWith(_$getAssignmentSuccessImpl value,
          $Res Function(_$getAssignmentSuccessImpl) then) =
      __$$getAssignmentSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AssignmentResponseModel assignmentResponseModel});
}

/// @nodoc
class __$$getAssignmentSuccessImplCopyWithImpl<$Res>
    extends _$AssignmentStateCopyWithImpl<$Res, _$getAssignmentSuccessImpl>
    implements _$$getAssignmentSuccessImplCopyWith<$Res> {
  __$$getAssignmentSuccessImplCopyWithImpl(_$getAssignmentSuccessImpl _value,
      $Res Function(_$getAssignmentSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssignmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignmentResponseModel = null,
  }) {
    return _then(_$getAssignmentSuccessImpl(
      null == assignmentResponseModel
          ? _value.assignmentResponseModel
          : assignmentResponseModel // ignore: cast_nullable_to_non_nullable
              as AssignmentResponseModel,
    ));
  }
}

/// @nodoc

class _$getAssignmentSuccessImpl implements _getAssignmentSuccess {
  const _$getAssignmentSuccessImpl(this.assignmentResponseModel);

  @override
  final AssignmentResponseModel assignmentResponseModel;

  @override
  String toString() {
    return 'AssignmentState.getAssignmentSuccess(assignmentResponseModel: $assignmentResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getAssignmentSuccessImpl &&
            (identical(
                    other.assignmentResponseModel, assignmentResponseModel) ||
                other.assignmentResponseModel == assignmentResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, assignmentResponseModel);

  /// Create a copy of AssignmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$getAssignmentSuccessImplCopyWith<_$getAssignmentSuccessImpl>
      get copyWith =>
          __$$getAssignmentSuccessImplCopyWithImpl<_$getAssignmentSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AssignmentResponseModel assignmentResponseModel)
        getAssignmentSuccess,
    required TResult Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)
        getDetailAssignmentSuccess,
    required TResult Function(String message) error,
  }) {
    return getAssignmentSuccess(assignmentResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AssignmentResponseModel assignmentResponseModel)?
        getAssignmentSuccess,
    TResult? Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
    TResult? Function(String message)? error,
  }) {
    return getAssignmentSuccess?.call(assignmentResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AssignmentResponseModel assignmentResponseModel)?
        getAssignmentSuccess,
    TResult Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (getAssignmentSuccess != null) {
      return getAssignmentSuccess(assignmentResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_getAssignmentSuccess value) getAssignmentSuccess,
    required TResult Function(_getDetailAssignmentSuccess value)
        getDetailAssignmentSuccess,
    required TResult Function(_Error value) error,
  }) {
    return getAssignmentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_getAssignmentSuccess value)? getAssignmentSuccess,
    TResult? Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return getAssignmentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_getAssignmentSuccess value)? getAssignmentSuccess,
    TResult Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (getAssignmentSuccess != null) {
      return getAssignmentSuccess(this);
    }
    return orElse();
  }
}

abstract class _getAssignmentSuccess implements AssignmentState {
  const factory _getAssignmentSuccess(
          final AssignmentResponseModel assignmentResponseModel) =
      _$getAssignmentSuccessImpl;

  AssignmentResponseModel get assignmentResponseModel;

  /// Create a copy of AssignmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$getAssignmentSuccessImplCopyWith<_$getAssignmentSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getDetailAssignmentSuccessImplCopyWith<$Res> {
  factory _$$getDetailAssignmentSuccessImplCopyWith(
          _$getDetailAssignmentSuccessImpl value,
          $Res Function(_$getDetailAssignmentSuccessImpl) then) =
      __$$getDetailAssignmentSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DetailAssignmentResponseModel detailAssignmentResponseModel});
}

/// @nodoc
class __$$getDetailAssignmentSuccessImplCopyWithImpl<$Res>
    extends _$AssignmentStateCopyWithImpl<$Res,
        _$getDetailAssignmentSuccessImpl>
    implements _$$getDetailAssignmentSuccessImplCopyWith<$Res> {
  __$$getDetailAssignmentSuccessImplCopyWithImpl(
      _$getDetailAssignmentSuccessImpl _value,
      $Res Function(_$getDetailAssignmentSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssignmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailAssignmentResponseModel = null,
  }) {
    return _then(_$getDetailAssignmentSuccessImpl(
      null == detailAssignmentResponseModel
          ? _value.detailAssignmentResponseModel
          : detailAssignmentResponseModel // ignore: cast_nullable_to_non_nullable
              as DetailAssignmentResponseModel,
    ));
  }
}

/// @nodoc

class _$getDetailAssignmentSuccessImpl implements _getDetailAssignmentSuccess {
  const _$getDetailAssignmentSuccessImpl(this.detailAssignmentResponseModel);

  @override
  final DetailAssignmentResponseModel detailAssignmentResponseModel;

  @override
  String toString() {
    return 'AssignmentState.getDetailAssignmentSuccess(detailAssignmentResponseModel: $detailAssignmentResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getDetailAssignmentSuccessImpl &&
            (identical(other.detailAssignmentResponseModel,
                    detailAssignmentResponseModel) ||
                other.detailAssignmentResponseModel ==
                    detailAssignmentResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detailAssignmentResponseModel);

  /// Create a copy of AssignmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$getDetailAssignmentSuccessImplCopyWith<_$getDetailAssignmentSuccessImpl>
      get copyWith => __$$getDetailAssignmentSuccessImplCopyWithImpl<
          _$getDetailAssignmentSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AssignmentResponseModel assignmentResponseModel)
        getAssignmentSuccess,
    required TResult Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)
        getDetailAssignmentSuccess,
    required TResult Function(String message) error,
  }) {
    return getDetailAssignmentSuccess(detailAssignmentResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AssignmentResponseModel assignmentResponseModel)?
        getAssignmentSuccess,
    TResult? Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
    TResult? Function(String message)? error,
  }) {
    return getDetailAssignmentSuccess?.call(detailAssignmentResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AssignmentResponseModel assignmentResponseModel)?
        getAssignmentSuccess,
    TResult Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (getDetailAssignmentSuccess != null) {
      return getDetailAssignmentSuccess(detailAssignmentResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_getAssignmentSuccess value) getAssignmentSuccess,
    required TResult Function(_getDetailAssignmentSuccess value)
        getDetailAssignmentSuccess,
    required TResult Function(_Error value) error,
  }) {
    return getDetailAssignmentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_getAssignmentSuccess value)? getAssignmentSuccess,
    TResult? Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return getDetailAssignmentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_getAssignmentSuccess value)? getAssignmentSuccess,
    TResult Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (getDetailAssignmentSuccess != null) {
      return getDetailAssignmentSuccess(this);
    }
    return orElse();
  }
}

abstract class _getDetailAssignmentSuccess implements AssignmentState {
  const factory _getDetailAssignmentSuccess(
          final DetailAssignmentResponseModel detailAssignmentResponseModel) =
      _$getDetailAssignmentSuccessImpl;

  DetailAssignmentResponseModel get detailAssignmentResponseModel;

  /// Create a copy of AssignmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$getDetailAssignmentSuccessImplCopyWith<_$getDetailAssignmentSuccessImpl>
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
    extends _$AssignmentStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssignmentState
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
    return 'AssignmentState.error(message: $message)';
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

  /// Create a copy of AssignmentState
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
    required TResult Function(AssignmentResponseModel assignmentResponseModel)
        getAssignmentSuccess,
    required TResult Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)
        getDetailAssignmentSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AssignmentResponseModel assignmentResponseModel)?
        getAssignmentSuccess,
    TResult? Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AssignmentResponseModel assignmentResponseModel)?
        getAssignmentSuccess,
    TResult Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
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
    required TResult Function(_getAssignmentSuccess value) getAssignmentSuccess,
    required TResult Function(_getDetailAssignmentSuccess value)
        getDetailAssignmentSuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_getAssignmentSuccess value)? getAssignmentSuccess,
    TResult? Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_getAssignmentSuccess value)? getAssignmentSuccess,
    TResult Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AssignmentState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of AssignmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
