// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discussions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DiscussionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            int idCourse, int page, String? search, int? idArticle)
        discussion,
    required TResult Function(
            CreateDiscussionsRequestModel discussions, int idCourse)
        createDiscussions,
    required TResult Function(UpdateDiscussionsRequestModel discussions,
            int idCourse, int idDiscussions)
        updateDiscussions,
    required TResult Function(int idCourse, int idDiscussions) deleteDiscussion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idCourse, int page, String? search, int? idArticle)?
        discussion,
    TResult? Function(CreateDiscussionsRequestModel discussions, int idCourse)?
        createDiscussions,
    TResult? Function(UpdateDiscussionsRequestModel discussions, int idCourse,
            int idDiscussions)?
        updateDiscussions,
    TResult? Function(int idCourse, int idDiscussions)? deleteDiscussion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idCourse, int page, String? search, int? idArticle)?
        discussion,
    TResult Function(CreateDiscussionsRequestModel discussions, int idCourse)?
        createDiscussions,
    TResult Function(UpdateDiscussionsRequestModel discussions, int idCourse,
            int idDiscussions)?
        updateDiscussions,
    TResult Function(int idCourse, int idDiscussions)? deleteDiscussion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Discussion value) discussion,
    required TResult Function(_CreateDiscussions value) createDiscussions,
    required TResult Function(_UpdateDiscussions value) updateDiscussions,
    required TResult Function(_DeleteDiscussion value) deleteDiscussion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Discussion value)? discussion,
    TResult? Function(_CreateDiscussions value)? createDiscussions,
    TResult? Function(_UpdateDiscussions value)? updateDiscussions,
    TResult? Function(_DeleteDiscussion value)? deleteDiscussion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Discussion value)? discussion,
    TResult Function(_CreateDiscussions value)? createDiscussions,
    TResult Function(_UpdateDiscussions value)? updateDiscussions,
    TResult Function(_DeleteDiscussion value)? deleteDiscussion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscussionsEventCopyWith<$Res> {
  factory $DiscussionsEventCopyWith(
          DiscussionsEvent value, $Res Function(DiscussionsEvent) then) =
      _$DiscussionsEventCopyWithImpl<$Res, DiscussionsEvent>;
}

/// @nodoc
class _$DiscussionsEventCopyWithImpl<$Res, $Val extends DiscussionsEvent>
    implements $DiscussionsEventCopyWith<$Res> {
  _$DiscussionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscussionsEvent
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
    extends _$DiscussionsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscussionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'DiscussionsEvent.started()';
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
    required TResult Function(
            int idCourse, int page, String? search, int? idArticle)
        discussion,
    required TResult Function(
            CreateDiscussionsRequestModel discussions, int idCourse)
        createDiscussions,
    required TResult Function(UpdateDiscussionsRequestModel discussions,
            int idCourse, int idDiscussions)
        updateDiscussions,
    required TResult Function(int idCourse, int idDiscussions) deleteDiscussion,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idCourse, int page, String? search, int? idArticle)?
        discussion,
    TResult? Function(CreateDiscussionsRequestModel discussions, int idCourse)?
        createDiscussions,
    TResult? Function(UpdateDiscussionsRequestModel discussions, int idCourse,
            int idDiscussions)?
        updateDiscussions,
    TResult? Function(int idCourse, int idDiscussions)? deleteDiscussion,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idCourse, int page, String? search, int? idArticle)?
        discussion,
    TResult Function(CreateDiscussionsRequestModel discussions, int idCourse)?
        createDiscussions,
    TResult Function(UpdateDiscussionsRequestModel discussions, int idCourse,
            int idDiscussions)?
        updateDiscussions,
    TResult Function(int idCourse, int idDiscussions)? deleteDiscussion,
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
    required TResult Function(_Discussion value) discussion,
    required TResult Function(_CreateDiscussions value) createDiscussions,
    required TResult Function(_UpdateDiscussions value) updateDiscussions,
    required TResult Function(_DeleteDiscussion value) deleteDiscussion,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Discussion value)? discussion,
    TResult? Function(_CreateDiscussions value)? createDiscussions,
    TResult? Function(_UpdateDiscussions value)? updateDiscussions,
    TResult? Function(_DeleteDiscussion value)? deleteDiscussion,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Discussion value)? discussion,
    TResult Function(_CreateDiscussions value)? createDiscussions,
    TResult Function(_UpdateDiscussions value)? updateDiscussions,
    TResult Function(_DeleteDiscussion value)? deleteDiscussion,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DiscussionsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$DiscussionImplCopyWith<$Res> {
  factory _$$DiscussionImplCopyWith(
          _$DiscussionImpl value, $Res Function(_$DiscussionImpl) then) =
      __$$DiscussionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int idCourse, int page, String? search, int? idArticle});
}

/// @nodoc
class __$$DiscussionImplCopyWithImpl<$Res>
    extends _$DiscussionsEventCopyWithImpl<$Res, _$DiscussionImpl>
    implements _$$DiscussionImplCopyWith<$Res> {
  __$$DiscussionImplCopyWithImpl(
      _$DiscussionImpl _value, $Res Function(_$DiscussionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscussionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCourse = null,
    Object? page = null,
    Object? search = freezed,
    Object? idArticle = freezed,
  }) {
    return _then(_$DiscussionImpl(
      null == idCourse
          ? _value.idCourse
          : idCourse // ignore: cast_nullable_to_non_nullable
              as int,
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == idArticle
          ? _value.idArticle
          : idArticle // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$DiscussionImpl implements _Discussion {
  const _$DiscussionImpl(this.idCourse, this.page, this.search, this.idArticle);

  @override
  final int idCourse;
  @override
  final int page;
  @override
  final String? search;
  @override
  final int? idArticle;

  @override
  String toString() {
    return 'DiscussionsEvent.discussion(idCourse: $idCourse, page: $page, search: $search, idArticle: $idArticle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscussionImpl &&
            (identical(other.idCourse, idCourse) ||
                other.idCourse == idCourse) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.idArticle, idArticle) ||
                other.idArticle == idArticle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, idCourse, page, search, idArticle);

  /// Create a copy of DiscussionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscussionImplCopyWith<_$DiscussionImpl> get copyWith =>
      __$$DiscussionImplCopyWithImpl<_$DiscussionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            int idCourse, int page, String? search, int? idArticle)
        discussion,
    required TResult Function(
            CreateDiscussionsRequestModel discussions, int idCourse)
        createDiscussions,
    required TResult Function(UpdateDiscussionsRequestModel discussions,
            int idCourse, int idDiscussions)
        updateDiscussions,
    required TResult Function(int idCourse, int idDiscussions) deleteDiscussion,
  }) {
    return discussion(idCourse, page, search, idArticle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idCourse, int page, String? search, int? idArticle)?
        discussion,
    TResult? Function(CreateDiscussionsRequestModel discussions, int idCourse)?
        createDiscussions,
    TResult? Function(UpdateDiscussionsRequestModel discussions, int idCourse,
            int idDiscussions)?
        updateDiscussions,
    TResult? Function(int idCourse, int idDiscussions)? deleteDiscussion,
  }) {
    return discussion?.call(idCourse, page, search, idArticle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idCourse, int page, String? search, int? idArticle)?
        discussion,
    TResult Function(CreateDiscussionsRequestModel discussions, int idCourse)?
        createDiscussions,
    TResult Function(UpdateDiscussionsRequestModel discussions, int idCourse,
            int idDiscussions)?
        updateDiscussions,
    TResult Function(int idCourse, int idDiscussions)? deleteDiscussion,
    required TResult orElse(),
  }) {
    if (discussion != null) {
      return discussion(idCourse, page, search, idArticle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Discussion value) discussion,
    required TResult Function(_CreateDiscussions value) createDiscussions,
    required TResult Function(_UpdateDiscussions value) updateDiscussions,
    required TResult Function(_DeleteDiscussion value) deleteDiscussion,
  }) {
    return discussion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Discussion value)? discussion,
    TResult? Function(_CreateDiscussions value)? createDiscussions,
    TResult? Function(_UpdateDiscussions value)? updateDiscussions,
    TResult? Function(_DeleteDiscussion value)? deleteDiscussion,
  }) {
    return discussion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Discussion value)? discussion,
    TResult Function(_CreateDiscussions value)? createDiscussions,
    TResult Function(_UpdateDiscussions value)? updateDiscussions,
    TResult Function(_DeleteDiscussion value)? deleteDiscussion,
    required TResult orElse(),
  }) {
    if (discussion != null) {
      return discussion(this);
    }
    return orElse();
  }
}

abstract class _Discussion implements DiscussionsEvent {
  const factory _Discussion(final int idCourse, final int page,
      final String? search, final int? idArticle) = _$DiscussionImpl;

  int get idCourse;
  int get page;
  String? get search;
  int? get idArticle;

  /// Create a copy of DiscussionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscussionImplCopyWith<_$DiscussionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateDiscussionsImplCopyWith<$Res> {
  factory _$$CreateDiscussionsImplCopyWith(_$CreateDiscussionsImpl value,
          $Res Function(_$CreateDiscussionsImpl) then) =
      __$$CreateDiscussionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateDiscussionsRequestModel discussions, int idCourse});
}

/// @nodoc
class __$$CreateDiscussionsImplCopyWithImpl<$Res>
    extends _$DiscussionsEventCopyWithImpl<$Res, _$CreateDiscussionsImpl>
    implements _$$CreateDiscussionsImplCopyWith<$Res> {
  __$$CreateDiscussionsImplCopyWithImpl(_$CreateDiscussionsImpl _value,
      $Res Function(_$CreateDiscussionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscussionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discussions = null,
    Object? idCourse = null,
  }) {
    return _then(_$CreateDiscussionsImpl(
      null == discussions
          ? _value.discussions
          : discussions // ignore: cast_nullable_to_non_nullable
              as CreateDiscussionsRequestModel,
      null == idCourse
          ? _value.idCourse
          : idCourse // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CreateDiscussionsImpl implements _CreateDiscussions {
  const _$CreateDiscussionsImpl(this.discussions, this.idCourse);

  @override
  final CreateDiscussionsRequestModel discussions;
  @override
  final int idCourse;

  @override
  String toString() {
    return 'DiscussionsEvent.createDiscussions(discussions: $discussions, idCourse: $idCourse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDiscussionsImpl &&
            (identical(other.discussions, discussions) ||
                other.discussions == discussions) &&
            (identical(other.idCourse, idCourse) ||
                other.idCourse == idCourse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discussions, idCourse);

  /// Create a copy of DiscussionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateDiscussionsImplCopyWith<_$CreateDiscussionsImpl> get copyWith =>
      __$$CreateDiscussionsImplCopyWithImpl<_$CreateDiscussionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            int idCourse, int page, String? search, int? idArticle)
        discussion,
    required TResult Function(
            CreateDiscussionsRequestModel discussions, int idCourse)
        createDiscussions,
    required TResult Function(UpdateDiscussionsRequestModel discussions,
            int idCourse, int idDiscussions)
        updateDiscussions,
    required TResult Function(int idCourse, int idDiscussions) deleteDiscussion,
  }) {
    return createDiscussions(discussions, idCourse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idCourse, int page, String? search, int? idArticle)?
        discussion,
    TResult? Function(CreateDiscussionsRequestModel discussions, int idCourse)?
        createDiscussions,
    TResult? Function(UpdateDiscussionsRequestModel discussions, int idCourse,
            int idDiscussions)?
        updateDiscussions,
    TResult? Function(int idCourse, int idDiscussions)? deleteDiscussion,
  }) {
    return createDiscussions?.call(discussions, idCourse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idCourse, int page, String? search, int? idArticle)?
        discussion,
    TResult Function(CreateDiscussionsRequestModel discussions, int idCourse)?
        createDiscussions,
    TResult Function(UpdateDiscussionsRequestModel discussions, int idCourse,
            int idDiscussions)?
        updateDiscussions,
    TResult Function(int idCourse, int idDiscussions)? deleteDiscussion,
    required TResult orElse(),
  }) {
    if (createDiscussions != null) {
      return createDiscussions(discussions, idCourse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Discussion value) discussion,
    required TResult Function(_CreateDiscussions value) createDiscussions,
    required TResult Function(_UpdateDiscussions value) updateDiscussions,
    required TResult Function(_DeleteDiscussion value) deleteDiscussion,
  }) {
    return createDiscussions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Discussion value)? discussion,
    TResult? Function(_CreateDiscussions value)? createDiscussions,
    TResult? Function(_UpdateDiscussions value)? updateDiscussions,
    TResult? Function(_DeleteDiscussion value)? deleteDiscussion,
  }) {
    return createDiscussions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Discussion value)? discussion,
    TResult Function(_CreateDiscussions value)? createDiscussions,
    TResult Function(_UpdateDiscussions value)? updateDiscussions,
    TResult Function(_DeleteDiscussion value)? deleteDiscussion,
    required TResult orElse(),
  }) {
    if (createDiscussions != null) {
      return createDiscussions(this);
    }
    return orElse();
  }
}

abstract class _CreateDiscussions implements DiscussionsEvent {
  const factory _CreateDiscussions(
          final CreateDiscussionsRequestModel discussions, final int idCourse) =
      _$CreateDiscussionsImpl;

  CreateDiscussionsRequestModel get discussions;
  int get idCourse;

  /// Create a copy of DiscussionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateDiscussionsImplCopyWith<_$CreateDiscussionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDiscussionsImplCopyWith<$Res> {
  factory _$$UpdateDiscussionsImplCopyWith(_$UpdateDiscussionsImpl value,
          $Res Function(_$UpdateDiscussionsImpl) then) =
      __$$UpdateDiscussionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {UpdateDiscussionsRequestModel discussions,
      int idCourse,
      int idDiscussions});
}

/// @nodoc
class __$$UpdateDiscussionsImplCopyWithImpl<$Res>
    extends _$DiscussionsEventCopyWithImpl<$Res, _$UpdateDiscussionsImpl>
    implements _$$UpdateDiscussionsImplCopyWith<$Res> {
  __$$UpdateDiscussionsImplCopyWithImpl(_$UpdateDiscussionsImpl _value,
      $Res Function(_$UpdateDiscussionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscussionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discussions = null,
    Object? idCourse = null,
    Object? idDiscussions = null,
  }) {
    return _then(_$UpdateDiscussionsImpl(
      null == discussions
          ? _value.discussions
          : discussions // ignore: cast_nullable_to_non_nullable
              as UpdateDiscussionsRequestModel,
      null == idCourse
          ? _value.idCourse
          : idCourse // ignore: cast_nullable_to_non_nullable
              as int,
      null == idDiscussions
          ? _value.idDiscussions
          : idDiscussions // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateDiscussionsImpl implements _UpdateDiscussions {
  const _$UpdateDiscussionsImpl(
      this.discussions, this.idCourse, this.idDiscussions);

  @override
  final UpdateDiscussionsRequestModel discussions;
  @override
  final int idCourse;
  @override
  final int idDiscussions;

  @override
  String toString() {
    return 'DiscussionsEvent.updateDiscussions(discussions: $discussions, idCourse: $idCourse, idDiscussions: $idDiscussions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDiscussionsImpl &&
            (identical(other.discussions, discussions) ||
                other.discussions == discussions) &&
            (identical(other.idCourse, idCourse) ||
                other.idCourse == idCourse) &&
            (identical(other.idDiscussions, idDiscussions) ||
                other.idDiscussions == idDiscussions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, discussions, idCourse, idDiscussions);

  /// Create a copy of DiscussionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDiscussionsImplCopyWith<_$UpdateDiscussionsImpl> get copyWith =>
      __$$UpdateDiscussionsImplCopyWithImpl<_$UpdateDiscussionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            int idCourse, int page, String? search, int? idArticle)
        discussion,
    required TResult Function(
            CreateDiscussionsRequestModel discussions, int idCourse)
        createDiscussions,
    required TResult Function(UpdateDiscussionsRequestModel discussions,
            int idCourse, int idDiscussions)
        updateDiscussions,
    required TResult Function(int idCourse, int idDiscussions) deleteDiscussion,
  }) {
    return updateDiscussions(discussions, idCourse, idDiscussions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idCourse, int page, String? search, int? idArticle)?
        discussion,
    TResult? Function(CreateDiscussionsRequestModel discussions, int idCourse)?
        createDiscussions,
    TResult? Function(UpdateDiscussionsRequestModel discussions, int idCourse,
            int idDiscussions)?
        updateDiscussions,
    TResult? Function(int idCourse, int idDiscussions)? deleteDiscussion,
  }) {
    return updateDiscussions?.call(discussions, idCourse, idDiscussions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idCourse, int page, String? search, int? idArticle)?
        discussion,
    TResult Function(CreateDiscussionsRequestModel discussions, int idCourse)?
        createDiscussions,
    TResult Function(UpdateDiscussionsRequestModel discussions, int idCourse,
            int idDiscussions)?
        updateDiscussions,
    TResult Function(int idCourse, int idDiscussions)? deleteDiscussion,
    required TResult orElse(),
  }) {
    if (updateDiscussions != null) {
      return updateDiscussions(discussions, idCourse, idDiscussions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Discussion value) discussion,
    required TResult Function(_CreateDiscussions value) createDiscussions,
    required TResult Function(_UpdateDiscussions value) updateDiscussions,
    required TResult Function(_DeleteDiscussion value) deleteDiscussion,
  }) {
    return updateDiscussions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Discussion value)? discussion,
    TResult? Function(_CreateDiscussions value)? createDiscussions,
    TResult? Function(_UpdateDiscussions value)? updateDiscussions,
    TResult? Function(_DeleteDiscussion value)? deleteDiscussion,
  }) {
    return updateDiscussions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Discussion value)? discussion,
    TResult Function(_CreateDiscussions value)? createDiscussions,
    TResult Function(_UpdateDiscussions value)? updateDiscussions,
    TResult Function(_DeleteDiscussion value)? deleteDiscussion,
    required TResult orElse(),
  }) {
    if (updateDiscussions != null) {
      return updateDiscussions(this);
    }
    return orElse();
  }
}

abstract class _UpdateDiscussions implements DiscussionsEvent {
  const factory _UpdateDiscussions(
      final UpdateDiscussionsRequestModel discussions,
      final int idCourse,
      final int idDiscussions) = _$UpdateDiscussionsImpl;

  UpdateDiscussionsRequestModel get discussions;
  int get idCourse;
  int get idDiscussions;

  /// Create a copy of DiscussionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDiscussionsImplCopyWith<_$UpdateDiscussionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteDiscussionImplCopyWith<$Res> {
  factory _$$DeleteDiscussionImplCopyWith(_$DeleteDiscussionImpl value,
          $Res Function(_$DeleteDiscussionImpl) then) =
      __$$DeleteDiscussionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int idCourse, int idDiscussions});
}

/// @nodoc
class __$$DeleteDiscussionImplCopyWithImpl<$Res>
    extends _$DiscussionsEventCopyWithImpl<$Res, _$DeleteDiscussionImpl>
    implements _$$DeleteDiscussionImplCopyWith<$Res> {
  __$$DeleteDiscussionImplCopyWithImpl(_$DeleteDiscussionImpl _value,
      $Res Function(_$DeleteDiscussionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscussionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCourse = null,
    Object? idDiscussions = null,
  }) {
    return _then(_$DeleteDiscussionImpl(
      null == idCourse
          ? _value.idCourse
          : idCourse // ignore: cast_nullable_to_non_nullable
              as int,
      null == idDiscussions
          ? _value.idDiscussions
          : idDiscussions // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteDiscussionImpl implements _DeleteDiscussion {
  const _$DeleteDiscussionImpl(this.idCourse, this.idDiscussions);

  @override
  final int idCourse;
  @override
  final int idDiscussions;

  @override
  String toString() {
    return 'DiscussionsEvent.deleteDiscussion(idCourse: $idCourse, idDiscussions: $idDiscussions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteDiscussionImpl &&
            (identical(other.idCourse, idCourse) ||
                other.idCourse == idCourse) &&
            (identical(other.idDiscussions, idDiscussions) ||
                other.idDiscussions == idDiscussions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idCourse, idDiscussions);

  /// Create a copy of DiscussionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteDiscussionImplCopyWith<_$DeleteDiscussionImpl> get copyWith =>
      __$$DeleteDiscussionImplCopyWithImpl<_$DeleteDiscussionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            int idCourse, int page, String? search, int? idArticle)
        discussion,
    required TResult Function(
            CreateDiscussionsRequestModel discussions, int idCourse)
        createDiscussions,
    required TResult Function(UpdateDiscussionsRequestModel discussions,
            int idCourse, int idDiscussions)
        updateDiscussions,
    required TResult Function(int idCourse, int idDiscussions) deleteDiscussion,
  }) {
    return deleteDiscussion(idCourse, idDiscussions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idCourse, int page, String? search, int? idArticle)?
        discussion,
    TResult? Function(CreateDiscussionsRequestModel discussions, int idCourse)?
        createDiscussions,
    TResult? Function(UpdateDiscussionsRequestModel discussions, int idCourse,
            int idDiscussions)?
        updateDiscussions,
    TResult? Function(int idCourse, int idDiscussions)? deleteDiscussion,
  }) {
    return deleteDiscussion?.call(idCourse, idDiscussions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idCourse, int page, String? search, int? idArticle)?
        discussion,
    TResult Function(CreateDiscussionsRequestModel discussions, int idCourse)?
        createDiscussions,
    TResult Function(UpdateDiscussionsRequestModel discussions, int idCourse,
            int idDiscussions)?
        updateDiscussions,
    TResult Function(int idCourse, int idDiscussions)? deleteDiscussion,
    required TResult orElse(),
  }) {
    if (deleteDiscussion != null) {
      return deleteDiscussion(idCourse, idDiscussions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Discussion value) discussion,
    required TResult Function(_CreateDiscussions value) createDiscussions,
    required TResult Function(_UpdateDiscussions value) updateDiscussions,
    required TResult Function(_DeleteDiscussion value) deleteDiscussion,
  }) {
    return deleteDiscussion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Discussion value)? discussion,
    TResult? Function(_CreateDiscussions value)? createDiscussions,
    TResult? Function(_UpdateDiscussions value)? updateDiscussions,
    TResult? Function(_DeleteDiscussion value)? deleteDiscussion,
  }) {
    return deleteDiscussion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Discussion value)? discussion,
    TResult Function(_CreateDiscussions value)? createDiscussions,
    TResult Function(_UpdateDiscussions value)? updateDiscussions,
    TResult Function(_DeleteDiscussion value)? deleteDiscussion,
    required TResult orElse(),
  }) {
    if (deleteDiscussion != null) {
      return deleteDiscussion(this);
    }
    return orElse();
  }
}

abstract class _DeleteDiscussion implements DiscussionsEvent {
  const factory _DeleteDiscussion(final int idCourse, final int idDiscussions) =
      _$DeleteDiscussionImpl;

  int get idCourse;
  int get idDiscussions;

  /// Create a copy of DiscussionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteDiscussionImplCopyWith<_$DeleteDiscussionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DiscussionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreateDiscussionsResponseModel discussions)
        createDiscussionsSuccess,
    required TResult Function(UpdateDiscussionsResponseModel discussions)
        updateDiscussionsSuccess,
    required TResult Function(DiscussionsResponseModel discussions)
        discussionSuccess,
    required TResult Function(DeleteDiscussionsResponseModel discussions)
        deleteDiscussionsSuccess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateDiscussionsResponseModel discussions)?
        createDiscussionsSuccess,
    TResult? Function(UpdateDiscussionsResponseModel discussions)?
        updateDiscussionsSuccess,
    TResult? Function(DiscussionsResponseModel discussions)? discussionSuccess,
    TResult? Function(DeleteDiscussionsResponseModel discussions)?
        deleteDiscussionsSuccess,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateDiscussionsResponseModel discussions)?
        createDiscussionsSuccess,
    TResult Function(UpdateDiscussionsResponseModel discussions)?
        updateDiscussionsSuccess,
    TResult Function(DiscussionsResponseModel discussions)? discussionSuccess,
    TResult Function(DeleteDiscussionsResponseModel discussions)?
        deleteDiscussionsSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CreateDiscussionsSuccess value)
        createDiscussionsSuccess,
    required TResult Function(_UpdateDiscussionsSuccess value)
        updateDiscussionsSuccess,
    required TResult Function(_DiscussionSuccess value) discussionSuccess,
    required TResult Function(_DeleteDiscussionsSuccess value)
        deleteDiscussionsSuccess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreateDiscussionsSuccess value)?
        createDiscussionsSuccess,
    TResult? Function(_UpdateDiscussionsSuccess value)?
        updateDiscussionsSuccess,
    TResult? Function(_DiscussionSuccess value)? discussionSuccess,
    TResult? Function(_DeleteDiscussionsSuccess value)?
        deleteDiscussionsSuccess,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreateDiscussionsSuccess value)? createDiscussionsSuccess,
    TResult Function(_UpdateDiscussionsSuccess value)? updateDiscussionsSuccess,
    TResult Function(_DiscussionSuccess value)? discussionSuccess,
    TResult Function(_DeleteDiscussionsSuccess value)? deleteDiscussionsSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscussionsStateCopyWith<$Res> {
  factory $DiscussionsStateCopyWith(
          DiscussionsState value, $Res Function(DiscussionsState) then) =
      _$DiscussionsStateCopyWithImpl<$Res, DiscussionsState>;
}

/// @nodoc
class _$DiscussionsStateCopyWithImpl<$Res, $Val extends DiscussionsState>
    implements $DiscussionsStateCopyWith<$Res> {
  _$DiscussionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscussionsState
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
    extends _$DiscussionsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscussionsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DiscussionsState.initial()';
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
    required TResult Function(CreateDiscussionsResponseModel discussions)
        createDiscussionsSuccess,
    required TResult Function(UpdateDiscussionsResponseModel discussions)
        updateDiscussionsSuccess,
    required TResult Function(DiscussionsResponseModel discussions)
        discussionSuccess,
    required TResult Function(DeleteDiscussionsResponseModel discussions)
        deleteDiscussionsSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateDiscussionsResponseModel discussions)?
        createDiscussionsSuccess,
    TResult? Function(UpdateDiscussionsResponseModel discussions)?
        updateDiscussionsSuccess,
    TResult? Function(DiscussionsResponseModel discussions)? discussionSuccess,
    TResult? Function(DeleteDiscussionsResponseModel discussions)?
        deleteDiscussionsSuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateDiscussionsResponseModel discussions)?
        createDiscussionsSuccess,
    TResult Function(UpdateDiscussionsResponseModel discussions)?
        updateDiscussionsSuccess,
    TResult Function(DiscussionsResponseModel discussions)? discussionSuccess,
    TResult Function(DeleteDiscussionsResponseModel discussions)?
        deleteDiscussionsSuccess,
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
    required TResult Function(_CreateDiscussionsSuccess value)
        createDiscussionsSuccess,
    required TResult Function(_UpdateDiscussionsSuccess value)
        updateDiscussionsSuccess,
    required TResult Function(_DiscussionSuccess value) discussionSuccess,
    required TResult Function(_DeleteDiscussionsSuccess value)
        deleteDiscussionsSuccess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreateDiscussionsSuccess value)?
        createDiscussionsSuccess,
    TResult? Function(_UpdateDiscussionsSuccess value)?
        updateDiscussionsSuccess,
    TResult? Function(_DiscussionSuccess value)? discussionSuccess,
    TResult? Function(_DeleteDiscussionsSuccess value)?
        deleteDiscussionsSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreateDiscussionsSuccess value)? createDiscussionsSuccess,
    TResult Function(_UpdateDiscussionsSuccess value)? updateDiscussionsSuccess,
    TResult Function(_DiscussionSuccess value)? discussionSuccess,
    TResult Function(_DeleteDiscussionsSuccess value)? deleteDiscussionsSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DiscussionsState {
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
    extends _$DiscussionsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscussionsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'DiscussionsState.loading()';
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
    required TResult Function(CreateDiscussionsResponseModel discussions)
        createDiscussionsSuccess,
    required TResult Function(UpdateDiscussionsResponseModel discussions)
        updateDiscussionsSuccess,
    required TResult Function(DiscussionsResponseModel discussions)
        discussionSuccess,
    required TResult Function(DeleteDiscussionsResponseModel discussions)
        deleteDiscussionsSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateDiscussionsResponseModel discussions)?
        createDiscussionsSuccess,
    TResult? Function(UpdateDiscussionsResponseModel discussions)?
        updateDiscussionsSuccess,
    TResult? Function(DiscussionsResponseModel discussions)? discussionSuccess,
    TResult? Function(DeleteDiscussionsResponseModel discussions)?
        deleteDiscussionsSuccess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateDiscussionsResponseModel discussions)?
        createDiscussionsSuccess,
    TResult Function(UpdateDiscussionsResponseModel discussions)?
        updateDiscussionsSuccess,
    TResult Function(DiscussionsResponseModel discussions)? discussionSuccess,
    TResult Function(DeleteDiscussionsResponseModel discussions)?
        deleteDiscussionsSuccess,
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
    required TResult Function(_CreateDiscussionsSuccess value)
        createDiscussionsSuccess,
    required TResult Function(_UpdateDiscussionsSuccess value)
        updateDiscussionsSuccess,
    required TResult Function(_DiscussionSuccess value) discussionSuccess,
    required TResult Function(_DeleteDiscussionsSuccess value)
        deleteDiscussionsSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreateDiscussionsSuccess value)?
        createDiscussionsSuccess,
    TResult? Function(_UpdateDiscussionsSuccess value)?
        updateDiscussionsSuccess,
    TResult? Function(_DiscussionSuccess value)? discussionSuccess,
    TResult? Function(_DeleteDiscussionsSuccess value)?
        deleteDiscussionsSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreateDiscussionsSuccess value)? createDiscussionsSuccess,
    TResult Function(_UpdateDiscussionsSuccess value)? updateDiscussionsSuccess,
    TResult Function(_DiscussionSuccess value)? discussionSuccess,
    TResult Function(_DeleteDiscussionsSuccess value)? deleteDiscussionsSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DiscussionsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$CreateDiscussionsSuccessImplCopyWith<$Res> {
  factory _$$CreateDiscussionsSuccessImplCopyWith(
          _$CreateDiscussionsSuccessImpl value,
          $Res Function(_$CreateDiscussionsSuccessImpl) then) =
      __$$CreateDiscussionsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateDiscussionsResponseModel discussions});
}

/// @nodoc
class __$$CreateDiscussionsSuccessImplCopyWithImpl<$Res>
    extends _$DiscussionsStateCopyWithImpl<$Res, _$CreateDiscussionsSuccessImpl>
    implements _$$CreateDiscussionsSuccessImplCopyWith<$Res> {
  __$$CreateDiscussionsSuccessImplCopyWithImpl(
      _$CreateDiscussionsSuccessImpl _value,
      $Res Function(_$CreateDiscussionsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscussionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discussions = null,
  }) {
    return _then(_$CreateDiscussionsSuccessImpl(
      null == discussions
          ? _value.discussions
          : discussions // ignore: cast_nullable_to_non_nullable
              as CreateDiscussionsResponseModel,
    ));
  }
}

/// @nodoc

class _$CreateDiscussionsSuccessImpl implements _CreateDiscussionsSuccess {
  const _$CreateDiscussionsSuccessImpl(this.discussions);

  @override
  final CreateDiscussionsResponseModel discussions;

  @override
  String toString() {
    return 'DiscussionsState.createDiscussionsSuccess(discussions: $discussions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDiscussionsSuccessImpl &&
            (identical(other.discussions, discussions) ||
                other.discussions == discussions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discussions);

  /// Create a copy of DiscussionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateDiscussionsSuccessImplCopyWith<_$CreateDiscussionsSuccessImpl>
      get copyWith => __$$CreateDiscussionsSuccessImplCopyWithImpl<
          _$CreateDiscussionsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreateDiscussionsResponseModel discussions)
        createDiscussionsSuccess,
    required TResult Function(UpdateDiscussionsResponseModel discussions)
        updateDiscussionsSuccess,
    required TResult Function(DiscussionsResponseModel discussions)
        discussionSuccess,
    required TResult Function(DeleteDiscussionsResponseModel discussions)
        deleteDiscussionsSuccess,
    required TResult Function(String message) error,
  }) {
    return createDiscussionsSuccess(discussions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateDiscussionsResponseModel discussions)?
        createDiscussionsSuccess,
    TResult? Function(UpdateDiscussionsResponseModel discussions)?
        updateDiscussionsSuccess,
    TResult? Function(DiscussionsResponseModel discussions)? discussionSuccess,
    TResult? Function(DeleteDiscussionsResponseModel discussions)?
        deleteDiscussionsSuccess,
    TResult? Function(String message)? error,
  }) {
    return createDiscussionsSuccess?.call(discussions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateDiscussionsResponseModel discussions)?
        createDiscussionsSuccess,
    TResult Function(UpdateDiscussionsResponseModel discussions)?
        updateDiscussionsSuccess,
    TResult Function(DiscussionsResponseModel discussions)? discussionSuccess,
    TResult Function(DeleteDiscussionsResponseModel discussions)?
        deleteDiscussionsSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (createDiscussionsSuccess != null) {
      return createDiscussionsSuccess(discussions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CreateDiscussionsSuccess value)
        createDiscussionsSuccess,
    required TResult Function(_UpdateDiscussionsSuccess value)
        updateDiscussionsSuccess,
    required TResult Function(_DiscussionSuccess value) discussionSuccess,
    required TResult Function(_DeleteDiscussionsSuccess value)
        deleteDiscussionsSuccess,
    required TResult Function(_Error value) error,
  }) {
    return createDiscussionsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreateDiscussionsSuccess value)?
        createDiscussionsSuccess,
    TResult? Function(_UpdateDiscussionsSuccess value)?
        updateDiscussionsSuccess,
    TResult? Function(_DiscussionSuccess value)? discussionSuccess,
    TResult? Function(_DeleteDiscussionsSuccess value)?
        deleteDiscussionsSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return createDiscussionsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreateDiscussionsSuccess value)? createDiscussionsSuccess,
    TResult Function(_UpdateDiscussionsSuccess value)? updateDiscussionsSuccess,
    TResult Function(_DiscussionSuccess value)? discussionSuccess,
    TResult Function(_DeleteDiscussionsSuccess value)? deleteDiscussionsSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (createDiscussionsSuccess != null) {
      return createDiscussionsSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateDiscussionsSuccess implements DiscussionsState {
  const factory _CreateDiscussionsSuccess(
          final CreateDiscussionsResponseModel discussions) =
      _$CreateDiscussionsSuccessImpl;

  CreateDiscussionsResponseModel get discussions;

  /// Create a copy of DiscussionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateDiscussionsSuccessImplCopyWith<_$CreateDiscussionsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDiscussionsSuccessImplCopyWith<$Res> {
  factory _$$UpdateDiscussionsSuccessImplCopyWith(
          _$UpdateDiscussionsSuccessImpl value,
          $Res Function(_$UpdateDiscussionsSuccessImpl) then) =
      __$$UpdateDiscussionsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateDiscussionsResponseModel discussions});
}

/// @nodoc
class __$$UpdateDiscussionsSuccessImplCopyWithImpl<$Res>
    extends _$DiscussionsStateCopyWithImpl<$Res, _$UpdateDiscussionsSuccessImpl>
    implements _$$UpdateDiscussionsSuccessImplCopyWith<$Res> {
  __$$UpdateDiscussionsSuccessImplCopyWithImpl(
      _$UpdateDiscussionsSuccessImpl _value,
      $Res Function(_$UpdateDiscussionsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscussionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discussions = null,
  }) {
    return _then(_$UpdateDiscussionsSuccessImpl(
      null == discussions
          ? _value.discussions
          : discussions // ignore: cast_nullable_to_non_nullable
              as UpdateDiscussionsResponseModel,
    ));
  }
}

/// @nodoc

class _$UpdateDiscussionsSuccessImpl implements _UpdateDiscussionsSuccess {
  const _$UpdateDiscussionsSuccessImpl(this.discussions);

  @override
  final UpdateDiscussionsResponseModel discussions;

  @override
  String toString() {
    return 'DiscussionsState.updateDiscussionsSuccess(discussions: $discussions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDiscussionsSuccessImpl &&
            (identical(other.discussions, discussions) ||
                other.discussions == discussions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discussions);

  /// Create a copy of DiscussionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDiscussionsSuccessImplCopyWith<_$UpdateDiscussionsSuccessImpl>
      get copyWith => __$$UpdateDiscussionsSuccessImplCopyWithImpl<
          _$UpdateDiscussionsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreateDiscussionsResponseModel discussions)
        createDiscussionsSuccess,
    required TResult Function(UpdateDiscussionsResponseModel discussions)
        updateDiscussionsSuccess,
    required TResult Function(DiscussionsResponseModel discussions)
        discussionSuccess,
    required TResult Function(DeleteDiscussionsResponseModel discussions)
        deleteDiscussionsSuccess,
    required TResult Function(String message) error,
  }) {
    return updateDiscussionsSuccess(discussions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateDiscussionsResponseModel discussions)?
        createDiscussionsSuccess,
    TResult? Function(UpdateDiscussionsResponseModel discussions)?
        updateDiscussionsSuccess,
    TResult? Function(DiscussionsResponseModel discussions)? discussionSuccess,
    TResult? Function(DeleteDiscussionsResponseModel discussions)?
        deleteDiscussionsSuccess,
    TResult? Function(String message)? error,
  }) {
    return updateDiscussionsSuccess?.call(discussions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateDiscussionsResponseModel discussions)?
        createDiscussionsSuccess,
    TResult Function(UpdateDiscussionsResponseModel discussions)?
        updateDiscussionsSuccess,
    TResult Function(DiscussionsResponseModel discussions)? discussionSuccess,
    TResult Function(DeleteDiscussionsResponseModel discussions)?
        deleteDiscussionsSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (updateDiscussionsSuccess != null) {
      return updateDiscussionsSuccess(discussions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CreateDiscussionsSuccess value)
        createDiscussionsSuccess,
    required TResult Function(_UpdateDiscussionsSuccess value)
        updateDiscussionsSuccess,
    required TResult Function(_DiscussionSuccess value) discussionSuccess,
    required TResult Function(_DeleteDiscussionsSuccess value)
        deleteDiscussionsSuccess,
    required TResult Function(_Error value) error,
  }) {
    return updateDiscussionsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreateDiscussionsSuccess value)?
        createDiscussionsSuccess,
    TResult? Function(_UpdateDiscussionsSuccess value)?
        updateDiscussionsSuccess,
    TResult? Function(_DiscussionSuccess value)? discussionSuccess,
    TResult? Function(_DeleteDiscussionsSuccess value)?
        deleteDiscussionsSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return updateDiscussionsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreateDiscussionsSuccess value)? createDiscussionsSuccess,
    TResult Function(_UpdateDiscussionsSuccess value)? updateDiscussionsSuccess,
    TResult Function(_DiscussionSuccess value)? discussionSuccess,
    TResult Function(_DeleteDiscussionsSuccess value)? deleteDiscussionsSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (updateDiscussionsSuccess != null) {
      return updateDiscussionsSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateDiscussionsSuccess implements DiscussionsState {
  const factory _UpdateDiscussionsSuccess(
          final UpdateDiscussionsResponseModel discussions) =
      _$UpdateDiscussionsSuccessImpl;

  UpdateDiscussionsResponseModel get discussions;

  /// Create a copy of DiscussionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDiscussionsSuccessImplCopyWith<_$UpdateDiscussionsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DiscussionSuccessImplCopyWith<$Res> {
  factory _$$DiscussionSuccessImplCopyWith(_$DiscussionSuccessImpl value,
          $Res Function(_$DiscussionSuccessImpl) then) =
      __$$DiscussionSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DiscussionsResponseModel discussions});
}

/// @nodoc
class __$$DiscussionSuccessImplCopyWithImpl<$Res>
    extends _$DiscussionsStateCopyWithImpl<$Res, _$DiscussionSuccessImpl>
    implements _$$DiscussionSuccessImplCopyWith<$Res> {
  __$$DiscussionSuccessImplCopyWithImpl(_$DiscussionSuccessImpl _value,
      $Res Function(_$DiscussionSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscussionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discussions = null,
  }) {
    return _then(_$DiscussionSuccessImpl(
      null == discussions
          ? _value.discussions
          : discussions // ignore: cast_nullable_to_non_nullable
              as DiscussionsResponseModel,
    ));
  }
}

/// @nodoc

class _$DiscussionSuccessImpl implements _DiscussionSuccess {
  const _$DiscussionSuccessImpl(this.discussions);

  @override
  final DiscussionsResponseModel discussions;

  @override
  String toString() {
    return 'DiscussionsState.discussionSuccess(discussions: $discussions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscussionSuccessImpl &&
            (identical(other.discussions, discussions) ||
                other.discussions == discussions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discussions);

  /// Create a copy of DiscussionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscussionSuccessImplCopyWith<_$DiscussionSuccessImpl> get copyWith =>
      __$$DiscussionSuccessImplCopyWithImpl<_$DiscussionSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreateDiscussionsResponseModel discussions)
        createDiscussionsSuccess,
    required TResult Function(UpdateDiscussionsResponseModel discussions)
        updateDiscussionsSuccess,
    required TResult Function(DiscussionsResponseModel discussions)
        discussionSuccess,
    required TResult Function(DeleteDiscussionsResponseModel discussions)
        deleteDiscussionsSuccess,
    required TResult Function(String message) error,
  }) {
    return discussionSuccess(discussions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateDiscussionsResponseModel discussions)?
        createDiscussionsSuccess,
    TResult? Function(UpdateDiscussionsResponseModel discussions)?
        updateDiscussionsSuccess,
    TResult? Function(DiscussionsResponseModel discussions)? discussionSuccess,
    TResult? Function(DeleteDiscussionsResponseModel discussions)?
        deleteDiscussionsSuccess,
    TResult? Function(String message)? error,
  }) {
    return discussionSuccess?.call(discussions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateDiscussionsResponseModel discussions)?
        createDiscussionsSuccess,
    TResult Function(UpdateDiscussionsResponseModel discussions)?
        updateDiscussionsSuccess,
    TResult Function(DiscussionsResponseModel discussions)? discussionSuccess,
    TResult Function(DeleteDiscussionsResponseModel discussions)?
        deleteDiscussionsSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (discussionSuccess != null) {
      return discussionSuccess(discussions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CreateDiscussionsSuccess value)
        createDiscussionsSuccess,
    required TResult Function(_UpdateDiscussionsSuccess value)
        updateDiscussionsSuccess,
    required TResult Function(_DiscussionSuccess value) discussionSuccess,
    required TResult Function(_DeleteDiscussionsSuccess value)
        deleteDiscussionsSuccess,
    required TResult Function(_Error value) error,
  }) {
    return discussionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreateDiscussionsSuccess value)?
        createDiscussionsSuccess,
    TResult? Function(_UpdateDiscussionsSuccess value)?
        updateDiscussionsSuccess,
    TResult? Function(_DiscussionSuccess value)? discussionSuccess,
    TResult? Function(_DeleteDiscussionsSuccess value)?
        deleteDiscussionsSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return discussionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreateDiscussionsSuccess value)? createDiscussionsSuccess,
    TResult Function(_UpdateDiscussionsSuccess value)? updateDiscussionsSuccess,
    TResult Function(_DiscussionSuccess value)? discussionSuccess,
    TResult Function(_DeleteDiscussionsSuccess value)? deleteDiscussionsSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (discussionSuccess != null) {
      return discussionSuccess(this);
    }
    return orElse();
  }
}

abstract class _DiscussionSuccess implements DiscussionsState {
  const factory _DiscussionSuccess(final DiscussionsResponseModel discussions) =
      _$DiscussionSuccessImpl;

  DiscussionsResponseModel get discussions;

  /// Create a copy of DiscussionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscussionSuccessImplCopyWith<_$DiscussionSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteDiscussionsSuccessImplCopyWith<$Res> {
  factory _$$DeleteDiscussionsSuccessImplCopyWith(
          _$DeleteDiscussionsSuccessImpl value,
          $Res Function(_$DeleteDiscussionsSuccessImpl) then) =
      __$$DeleteDiscussionsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteDiscussionsResponseModel discussions});
}

/// @nodoc
class __$$DeleteDiscussionsSuccessImplCopyWithImpl<$Res>
    extends _$DiscussionsStateCopyWithImpl<$Res, _$DeleteDiscussionsSuccessImpl>
    implements _$$DeleteDiscussionsSuccessImplCopyWith<$Res> {
  __$$DeleteDiscussionsSuccessImplCopyWithImpl(
      _$DeleteDiscussionsSuccessImpl _value,
      $Res Function(_$DeleteDiscussionsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscussionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discussions = null,
  }) {
    return _then(_$DeleteDiscussionsSuccessImpl(
      null == discussions
          ? _value.discussions
          : discussions // ignore: cast_nullable_to_non_nullable
              as DeleteDiscussionsResponseModel,
    ));
  }
}

/// @nodoc

class _$DeleteDiscussionsSuccessImpl implements _DeleteDiscussionsSuccess {
  const _$DeleteDiscussionsSuccessImpl(this.discussions);

  @override
  final DeleteDiscussionsResponseModel discussions;

  @override
  String toString() {
    return 'DiscussionsState.deleteDiscussionsSuccess(discussions: $discussions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteDiscussionsSuccessImpl &&
            (identical(other.discussions, discussions) ||
                other.discussions == discussions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discussions);

  /// Create a copy of DiscussionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteDiscussionsSuccessImplCopyWith<_$DeleteDiscussionsSuccessImpl>
      get copyWith => __$$DeleteDiscussionsSuccessImplCopyWithImpl<
          _$DeleteDiscussionsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreateDiscussionsResponseModel discussions)
        createDiscussionsSuccess,
    required TResult Function(UpdateDiscussionsResponseModel discussions)
        updateDiscussionsSuccess,
    required TResult Function(DiscussionsResponseModel discussions)
        discussionSuccess,
    required TResult Function(DeleteDiscussionsResponseModel discussions)
        deleteDiscussionsSuccess,
    required TResult Function(String message) error,
  }) {
    return deleteDiscussionsSuccess(discussions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateDiscussionsResponseModel discussions)?
        createDiscussionsSuccess,
    TResult? Function(UpdateDiscussionsResponseModel discussions)?
        updateDiscussionsSuccess,
    TResult? Function(DiscussionsResponseModel discussions)? discussionSuccess,
    TResult? Function(DeleteDiscussionsResponseModel discussions)?
        deleteDiscussionsSuccess,
    TResult? Function(String message)? error,
  }) {
    return deleteDiscussionsSuccess?.call(discussions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateDiscussionsResponseModel discussions)?
        createDiscussionsSuccess,
    TResult Function(UpdateDiscussionsResponseModel discussions)?
        updateDiscussionsSuccess,
    TResult Function(DiscussionsResponseModel discussions)? discussionSuccess,
    TResult Function(DeleteDiscussionsResponseModel discussions)?
        deleteDiscussionsSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (deleteDiscussionsSuccess != null) {
      return deleteDiscussionsSuccess(discussions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CreateDiscussionsSuccess value)
        createDiscussionsSuccess,
    required TResult Function(_UpdateDiscussionsSuccess value)
        updateDiscussionsSuccess,
    required TResult Function(_DiscussionSuccess value) discussionSuccess,
    required TResult Function(_DeleteDiscussionsSuccess value)
        deleteDiscussionsSuccess,
    required TResult Function(_Error value) error,
  }) {
    return deleteDiscussionsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreateDiscussionsSuccess value)?
        createDiscussionsSuccess,
    TResult? Function(_UpdateDiscussionsSuccess value)?
        updateDiscussionsSuccess,
    TResult? Function(_DiscussionSuccess value)? discussionSuccess,
    TResult? Function(_DeleteDiscussionsSuccess value)?
        deleteDiscussionsSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return deleteDiscussionsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreateDiscussionsSuccess value)? createDiscussionsSuccess,
    TResult Function(_UpdateDiscussionsSuccess value)? updateDiscussionsSuccess,
    TResult Function(_DiscussionSuccess value)? discussionSuccess,
    TResult Function(_DeleteDiscussionsSuccess value)? deleteDiscussionsSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (deleteDiscussionsSuccess != null) {
      return deleteDiscussionsSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteDiscussionsSuccess implements DiscussionsState {
  const factory _DeleteDiscussionsSuccess(
          final DeleteDiscussionsResponseModel discussions) =
      _$DeleteDiscussionsSuccessImpl;

  DeleteDiscussionsResponseModel get discussions;

  /// Create a copy of DiscussionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteDiscussionsSuccessImplCopyWith<_$DeleteDiscussionsSuccessImpl>
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
    extends _$DiscussionsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscussionsState
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
    return 'DiscussionsState.error(message: $message)';
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

  /// Create a copy of DiscussionsState
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
    required TResult Function(CreateDiscussionsResponseModel discussions)
        createDiscussionsSuccess,
    required TResult Function(UpdateDiscussionsResponseModel discussions)
        updateDiscussionsSuccess,
    required TResult Function(DiscussionsResponseModel discussions)
        discussionSuccess,
    required TResult Function(DeleteDiscussionsResponseModel discussions)
        deleteDiscussionsSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateDiscussionsResponseModel discussions)?
        createDiscussionsSuccess,
    TResult? Function(UpdateDiscussionsResponseModel discussions)?
        updateDiscussionsSuccess,
    TResult? Function(DiscussionsResponseModel discussions)? discussionSuccess,
    TResult? Function(DeleteDiscussionsResponseModel discussions)?
        deleteDiscussionsSuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateDiscussionsResponseModel discussions)?
        createDiscussionsSuccess,
    TResult Function(UpdateDiscussionsResponseModel discussions)?
        updateDiscussionsSuccess,
    TResult Function(DiscussionsResponseModel discussions)? discussionSuccess,
    TResult Function(DeleteDiscussionsResponseModel discussions)?
        deleteDiscussionsSuccess,
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
    required TResult Function(_CreateDiscussionsSuccess value)
        createDiscussionsSuccess,
    required TResult Function(_UpdateDiscussionsSuccess value)
        updateDiscussionsSuccess,
    required TResult Function(_DiscussionSuccess value) discussionSuccess,
    required TResult Function(_DeleteDiscussionsSuccess value)
        deleteDiscussionsSuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CreateDiscussionsSuccess value)?
        createDiscussionsSuccess,
    TResult? Function(_UpdateDiscussionsSuccess value)?
        updateDiscussionsSuccess,
    TResult? Function(_DiscussionSuccess value)? discussionSuccess,
    TResult? Function(_DeleteDiscussionsSuccess value)?
        deleteDiscussionsSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CreateDiscussionsSuccess value)? createDiscussionsSuccess,
    TResult Function(_UpdateDiscussionsSuccess value)? updateDiscussionsSuccess,
    TResult Function(_DiscussionSuccess value)? discussionSuccess,
    TResult Function(_DeleteDiscussionsSuccess value)? deleteDiscussionsSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DiscussionsState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of DiscussionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
