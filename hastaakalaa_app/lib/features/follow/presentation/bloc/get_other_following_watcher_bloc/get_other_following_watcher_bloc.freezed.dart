// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_other_following_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetOtherFollowingWatcherEventTearOff {
  const _$GetOtherFollowingWatcherEventTearOff();

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
const $GetOtherFollowingWatcherEvent = _$GetOtherFollowingWatcherEventTearOff();

/// @nodoc
mixin _$GetOtherFollowingWatcherEvent {
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
abstract class $GetOtherFollowingWatcherEventCopyWith<$Res> {
  factory $GetOtherFollowingWatcherEventCopyWith(
          GetOtherFollowingWatcherEvent value,
          $Res Function(GetOtherFollowingWatcherEvent) then) =
      _$GetOtherFollowingWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetOtherFollowingWatcherEventCopyWithImpl<$Res>
    implements $GetOtherFollowingWatcherEventCopyWith<$Res> {
  _$GetOtherFollowingWatcherEventCopyWithImpl(this._value, this._then);

  final GetOtherFollowingWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(GetOtherFollowingWatcherEvent) _then;
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
    extends _$GetOtherFollowingWatcherEventCopyWithImpl<$Res>
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
    return 'GetOtherFollowingWatcherEvent.retrieveFollowList(id: $id)';
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

abstract class _RetrieveFollowList implements GetOtherFollowingWatcherEvent {
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
    extends _$GetOtherFollowingWatcherEventCopyWithImpl<$Res>
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
    return 'GetOtherFollowingWatcherEvent.changedId(id: $id)';
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

abstract class _ChangedId implements GetOtherFollowingWatcherEvent {
  const factory _ChangedId({int? id}) = _$_ChangedId;

  int? get id;
  @JsonKey(ignore: true)
  _$ChangedIdCopyWith<_ChangedId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetOtherFollowingWatcherStateTearOff {
  const _$GetOtherFollowingWatcherStateTearOff();

  _GetOtherFollowingWatcherState call(
      {required bool isLoading,
      int? id,
      required bool showErrors,
      List<FollowEntity>? followList,
      Either<Failure, List<FollowEntity>>? failureOrSuccess}) {
    return _GetOtherFollowingWatcherState(
      isLoading: isLoading,
      id: id,
      showErrors: showErrors,
      followList: followList,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $GetOtherFollowingWatcherState = _$GetOtherFollowingWatcherStateTearOff();

/// @nodoc
mixin _$GetOtherFollowingWatcherState {
  bool get isLoading => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  List<FollowEntity>? get followList => throw _privateConstructorUsedError;
  Either<Failure, List<FollowEntity>>? get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetOtherFollowingWatcherStateCopyWith<GetOtherFollowingWatcherState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOtherFollowingWatcherStateCopyWith<$Res> {
  factory $GetOtherFollowingWatcherStateCopyWith(
          GetOtherFollowingWatcherState value,
          $Res Function(GetOtherFollowingWatcherState) then) =
      _$GetOtherFollowingWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      int? id,
      bool showErrors,
      List<FollowEntity>? followList,
      Either<Failure, List<FollowEntity>>? failureOrSuccess});
}

/// @nodoc
class _$GetOtherFollowingWatcherStateCopyWithImpl<$Res>
    implements $GetOtherFollowingWatcherStateCopyWith<$Res> {
  _$GetOtherFollowingWatcherStateCopyWithImpl(this._value, this._then);

  final GetOtherFollowingWatcherState _value;
  // ignore: unused_field
  final $Res Function(GetOtherFollowingWatcherState) _then;

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
abstract class _$GetOtherFollowingWatcherStateCopyWith<$Res>
    implements $GetOtherFollowingWatcherStateCopyWith<$Res> {
  factory _$GetOtherFollowingWatcherStateCopyWith(
          _GetOtherFollowingWatcherState value,
          $Res Function(_GetOtherFollowingWatcherState) then) =
      __$GetOtherFollowingWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      int? id,
      bool showErrors,
      List<FollowEntity>? followList,
      Either<Failure, List<FollowEntity>>? failureOrSuccess});
}

/// @nodoc
class __$GetOtherFollowingWatcherStateCopyWithImpl<$Res>
    extends _$GetOtherFollowingWatcherStateCopyWithImpl<$Res>
    implements _$GetOtherFollowingWatcherStateCopyWith<$Res> {
  __$GetOtherFollowingWatcherStateCopyWithImpl(
      _GetOtherFollowingWatcherState _value,
      $Res Function(_GetOtherFollowingWatcherState) _then)
      : super(_value, (v) => _then(v as _GetOtherFollowingWatcherState));

  @override
  _GetOtherFollowingWatcherState get _value =>
      super._value as _GetOtherFollowingWatcherState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? id = freezed,
    Object? showErrors = freezed,
    Object? followList = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_GetOtherFollowingWatcherState(
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

class _$_GetOtherFollowingWatcherState
    implements _GetOtherFollowingWatcherState {
  const _$_GetOtherFollowingWatcherState(
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
    return 'GetOtherFollowingWatcherState(isLoading: $isLoading, id: $id, showErrors: $showErrors, followList: $followList, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetOtherFollowingWatcherState &&
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
  _$GetOtherFollowingWatcherStateCopyWith<_GetOtherFollowingWatcherState>
      get copyWith => __$GetOtherFollowingWatcherStateCopyWithImpl<
          _GetOtherFollowingWatcherState>(this, _$identity);
}

abstract class _GetOtherFollowingWatcherState
    implements GetOtherFollowingWatcherState {
  const factory _GetOtherFollowingWatcherState(
          {required bool isLoading,
          int? id,
          required bool showErrors,
          List<FollowEntity>? followList,
          Either<Failure, List<FollowEntity>>? failureOrSuccess}) =
      _$_GetOtherFollowingWatcherState;

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
  _$GetOtherFollowingWatcherStateCopyWith<_GetOtherFollowingWatcherState>
      get copyWith => throw _privateConstructorUsedError;
}
