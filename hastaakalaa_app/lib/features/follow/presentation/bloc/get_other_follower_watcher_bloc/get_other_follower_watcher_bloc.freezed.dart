// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_other_follower_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetOtherFollowerWatcherEventTearOff {
  const _$GetOtherFollowerWatcherEventTearOff();

  _RetrieveFollowList retrieveFollowList({required int id}) {
    return _RetrieveFollowList(
      id: id,
    );
  }

  _ChangedId changedId({int? id}) {
    return _ChangedId(
      id: id,
    );
  }
}

/// @nodoc
const $GetOtherFollowerWatcherEvent = _$GetOtherFollowerWatcherEventTearOff();

/// @nodoc
mixin _$GetOtherFollowerWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) retrieveFollowList,
    required TResult Function(int? id) changedId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? retrieveFollowList,
    TResult Function(int? id)? changedId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? retrieveFollowList,
    TResult Function(int? id)? changedId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveFollowList value) retrieveFollowList,
    required TResult Function(_ChangedId value) changedId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RetrieveFollowList value)? retrieveFollowList,
    TResult Function(_ChangedId value)? changedId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveFollowList value)? retrieveFollowList,
    TResult Function(_ChangedId value)? changedId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOtherFollowerWatcherEventCopyWith<$Res> {
  factory $GetOtherFollowerWatcherEventCopyWith(
          GetOtherFollowerWatcherEvent value,
          $Res Function(GetOtherFollowerWatcherEvent) then) =
      _$GetOtherFollowerWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetOtherFollowerWatcherEventCopyWithImpl<$Res>
    implements $GetOtherFollowerWatcherEventCopyWith<$Res> {
  _$GetOtherFollowerWatcherEventCopyWithImpl(this._value, this._then);

  final GetOtherFollowerWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(GetOtherFollowerWatcherEvent) _then;
}

/// @nodoc
abstract class _$RetrieveFollowListCopyWith<$Res> {
  factory _$RetrieveFollowListCopyWith(
          _RetrieveFollowList value, $Res Function(_RetrieveFollowList) then) =
      __$RetrieveFollowListCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$RetrieveFollowListCopyWithImpl<$Res>
    extends _$GetOtherFollowerWatcherEventCopyWithImpl<$Res>
    implements _$RetrieveFollowListCopyWith<$Res> {
  __$RetrieveFollowListCopyWithImpl(
      _RetrieveFollowList _value, $Res Function(_RetrieveFollowList) _then)
      : super(_value, (v) => _then(v as _RetrieveFollowList));

  @override
  _RetrieveFollowList get _value => super._value as _RetrieveFollowList;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_RetrieveFollowList(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RetrieveFollowList implements _RetrieveFollowList {
  const _$_RetrieveFollowList({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'GetOtherFollowerWatcherEvent.retrieveFollowList(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RetrieveFollowList &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$RetrieveFollowListCopyWith<_RetrieveFollowList> get copyWith =>
      __$RetrieveFollowListCopyWithImpl<_RetrieveFollowList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) retrieveFollowList,
    required TResult Function(int? id) changedId,
  }) {
    return retrieveFollowList(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? retrieveFollowList,
    TResult Function(int? id)? changedId,
  }) {
    return retrieveFollowList?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? retrieveFollowList,
    TResult Function(int? id)? changedId,
    required TResult orElse(),
  }) {
    if (retrieveFollowList != null) {
      return retrieveFollowList(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveFollowList value) retrieveFollowList,
    required TResult Function(_ChangedId value) changedId,
  }) {
    return retrieveFollowList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RetrieveFollowList value)? retrieveFollowList,
    TResult Function(_ChangedId value)? changedId,
  }) {
    return retrieveFollowList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveFollowList value)? retrieveFollowList,
    TResult Function(_ChangedId value)? changedId,
    required TResult orElse(),
  }) {
    if (retrieveFollowList != null) {
      return retrieveFollowList(this);
    }
    return orElse();
  }
}

abstract class _RetrieveFollowList implements GetOtherFollowerWatcherEvent {
  const factory _RetrieveFollowList({required int id}) = _$_RetrieveFollowList;

  int get id;
  @JsonKey(ignore: true)
  _$RetrieveFollowListCopyWith<_RetrieveFollowList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangedIdCopyWith<$Res> {
  factory _$ChangedIdCopyWith(
          _ChangedId value, $Res Function(_ChangedId) then) =
      __$ChangedIdCopyWithImpl<$Res>;
  $Res call({int? id});
}

/// @nodoc
class __$ChangedIdCopyWithImpl<$Res>
    extends _$GetOtherFollowerWatcherEventCopyWithImpl<$Res>
    implements _$ChangedIdCopyWith<$Res> {
  __$ChangedIdCopyWithImpl(_ChangedId _value, $Res Function(_ChangedId) _then)
      : super(_value, (v) => _then(v as _ChangedId));

  @override
  _ChangedId get _value => super._value as _ChangedId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_ChangedId(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ChangedId implements _ChangedId {
  const _$_ChangedId({this.id});

  @override
  final int? id;

  @override
  String toString() {
    return 'GetOtherFollowerWatcherEvent.changedId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangedId &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$ChangedIdCopyWith<_ChangedId> get copyWith =>
      __$ChangedIdCopyWithImpl<_ChangedId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) retrieveFollowList,
    required TResult Function(int? id) changedId,
  }) {
    return changedId(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? retrieveFollowList,
    TResult Function(int? id)? changedId,
  }) {
    return changedId?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? retrieveFollowList,
    TResult Function(int? id)? changedId,
    required TResult orElse(),
  }) {
    if (changedId != null) {
      return changedId(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveFollowList value) retrieveFollowList,
    required TResult Function(_ChangedId value) changedId,
  }) {
    return changedId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RetrieveFollowList value)? retrieveFollowList,
    TResult Function(_ChangedId value)? changedId,
  }) {
    return changedId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveFollowList value)? retrieveFollowList,
    TResult Function(_ChangedId value)? changedId,
    required TResult orElse(),
  }) {
    if (changedId != null) {
      return changedId(this);
    }
    return orElse();
  }
}

abstract class _ChangedId implements GetOtherFollowerWatcherEvent {
  const factory _ChangedId({int? id}) = _$_ChangedId;

  int? get id;
  @JsonKey(ignore: true)
  _$ChangedIdCopyWith<_ChangedId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetOtherFollowerWatcherStateTearOff {
  const _$GetOtherFollowerWatcherStateTearOff();

  _GetOtherFollowerWatcherState call(
      {required bool isLoading,
      int? id,
      required bool showErrors,
      List<FollowEntity>? followList,
      Either<Failure, List<FollowEntity>>? failureOrSuccess}) {
    return _GetOtherFollowerWatcherState(
      isLoading: isLoading,
      id: id,
      showErrors: showErrors,
      followList: followList,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $GetOtherFollowerWatcherState = _$GetOtherFollowerWatcherStateTearOff();

/// @nodoc
mixin _$GetOtherFollowerWatcherState {
  bool get isLoading => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  List<FollowEntity>? get followList => throw _privateConstructorUsedError;
  Either<Failure, List<FollowEntity>>? get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetOtherFollowerWatcherStateCopyWith<GetOtherFollowerWatcherState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOtherFollowerWatcherStateCopyWith<$Res> {
  factory $GetOtherFollowerWatcherStateCopyWith(
          GetOtherFollowerWatcherState value,
          $Res Function(GetOtherFollowerWatcherState) then) =
      _$GetOtherFollowerWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      int? id,
      bool showErrors,
      List<FollowEntity>? followList,
      Either<Failure, List<FollowEntity>>? failureOrSuccess});
}

/// @nodoc
class _$GetOtherFollowerWatcherStateCopyWithImpl<$Res>
    implements $GetOtherFollowerWatcherStateCopyWith<$Res> {
  _$GetOtherFollowerWatcherStateCopyWithImpl(this._value, this._then);

  final GetOtherFollowerWatcherState _value;
  // ignore: unused_field
  final $Res Function(GetOtherFollowerWatcherState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? id = freezed,
    Object? showErrors = freezed,
    Object? followList = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      followList: followList == freezed
          ? _value.followList
          : followList // ignore: cast_nullable_to_non_nullable
              as List<FollowEntity>?,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<FollowEntity>>?,
    ));
  }
}

/// @nodoc
abstract class _$GetOtherFollowerWatcherStateCopyWith<$Res>
    implements $GetOtherFollowerWatcherStateCopyWith<$Res> {
  factory _$GetOtherFollowerWatcherStateCopyWith(
          _GetOtherFollowerWatcherState value,
          $Res Function(_GetOtherFollowerWatcherState) then) =
      __$GetOtherFollowerWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      int? id,
      bool showErrors,
      List<FollowEntity>? followList,
      Either<Failure, List<FollowEntity>>? failureOrSuccess});
}

/// @nodoc
class __$GetOtherFollowerWatcherStateCopyWithImpl<$Res>
    extends _$GetOtherFollowerWatcherStateCopyWithImpl<$Res>
    implements _$GetOtherFollowerWatcherStateCopyWith<$Res> {
  __$GetOtherFollowerWatcherStateCopyWithImpl(
      _GetOtherFollowerWatcherState _value,
      $Res Function(_GetOtherFollowerWatcherState) _then)
      : super(_value, (v) => _then(v as _GetOtherFollowerWatcherState));

  @override
  _GetOtherFollowerWatcherState get _value =>
      super._value as _GetOtherFollowerWatcherState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? id = freezed,
    Object? showErrors = freezed,
    Object? followList = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_GetOtherFollowerWatcherState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      followList: followList == freezed
          ? _value.followList
          : followList // ignore: cast_nullable_to_non_nullable
              as List<FollowEntity>?,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<FollowEntity>>?,
    ));
  }
}

/// @nodoc

class _$_GetOtherFollowerWatcherState implements _GetOtherFollowerWatcherState {
  const _$_GetOtherFollowerWatcherState(
      {required this.isLoading,
      this.id,
      required this.showErrors,
      this.followList,
      this.failureOrSuccess});

  @override
  final bool isLoading;
  @override
  final int? id;
  @override
  final bool showErrors;
  @override
  final List<FollowEntity>? followList;
  @override
  final Either<Failure, List<FollowEntity>>? failureOrSuccess;

  @override
  String toString() {
    return 'GetOtherFollowerWatcherState(isLoading: $isLoading, id: $id, showErrors: $showErrors, followList: $followList, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetOtherFollowerWatcherState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality()
                .equals(other.followList, followList) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(followList),
      const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$GetOtherFollowerWatcherStateCopyWith<_GetOtherFollowerWatcherState>
      get copyWith => __$GetOtherFollowerWatcherStateCopyWithImpl<
          _GetOtherFollowerWatcherState>(this, _$identity);
}

abstract class _GetOtherFollowerWatcherState
    implements GetOtherFollowerWatcherState {
  const factory _GetOtherFollowerWatcherState(
          {required bool isLoading,
          int? id,
          required bool showErrors,
          List<FollowEntity>? followList,
          Either<Failure, List<FollowEntity>>? failureOrSuccess}) =
      _$_GetOtherFollowerWatcherState;

  @override
  bool get isLoading;
  @override
  int? get id;
  @override
  bool get showErrors;
  @override
  List<FollowEntity>? get followList;
  @override
  Either<Failure, List<FollowEntity>>? get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$GetOtherFollowerWatcherStateCopyWith<_GetOtherFollowerWatcherState>
      get copyWith => throw _privateConstructorUsedError;
}
