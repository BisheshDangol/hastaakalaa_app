// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_user_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchUserWatcherEventTearOff {
  const _$SearchUserWatcherEventTearOff();

  _ChangedKeyword changedKeyword({String? keyword}) {
    return _ChangedKeyword(
      keyword: keyword,
    );
  }

  _PressedSearch pressedSearch() {
    return const _PressedSearch();
  }

  _PressedFollow pressedFollow({required int id}) {
    return _PressedFollow(
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
const $SearchUserWatcherEvent = _$SearchUserWatcherEventTearOff();

/// @nodoc
mixin _$SearchUserWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? keyword) changedKeyword,
    required TResult Function() pressedSearch,
    required TResult Function(int id) pressedFollow,
    required TResult Function(int? id) changedId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? keyword)? changedKeyword,
    TResult Function()? pressedSearch,
    TResult Function(int id)? pressedFollow,
    TResult Function(int? id)? changedId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? keyword)? changedKeyword,
    TResult Function()? pressedSearch,
    TResult Function(int id)? pressedFollow,
    TResult Function(int? id)? changedId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedKeyword value) changedKeyword,
    required TResult Function(_PressedSearch value) pressedSearch,
    required TResult Function(_PressedFollow value) pressedFollow,
    required TResult Function(_ChangedId value) changedId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangedKeyword value)? changedKeyword,
    TResult Function(_PressedSearch value)? pressedSearch,
    TResult Function(_PressedFollow value)? pressedFollow,
    TResult Function(_ChangedId value)? changedId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedKeyword value)? changedKeyword,
    TResult Function(_PressedSearch value)? pressedSearch,
    TResult Function(_PressedFollow value)? pressedFollow,
    TResult Function(_ChangedId value)? changedId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUserWatcherEventCopyWith<$Res> {
  factory $SearchUserWatcherEventCopyWith(SearchUserWatcherEvent value,
          $Res Function(SearchUserWatcherEvent) then) =
      _$SearchUserWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchUserWatcherEventCopyWithImpl<$Res>
    implements $SearchUserWatcherEventCopyWith<$Res> {
  _$SearchUserWatcherEventCopyWithImpl(this._value, this._then);

  final SearchUserWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(SearchUserWatcherEvent) _then;
}

/// @nodoc
abstract class _$ChangedKeywordCopyWith<$Res> {
  factory _$ChangedKeywordCopyWith(
          _ChangedKeyword value, $Res Function(_ChangedKeyword) then) =
      __$ChangedKeywordCopyWithImpl<$Res>;
  $Res call({String? keyword});
}

/// @nodoc
class __$ChangedKeywordCopyWithImpl<$Res>
    extends _$SearchUserWatcherEventCopyWithImpl<$Res>
    implements _$ChangedKeywordCopyWith<$Res> {
  __$ChangedKeywordCopyWithImpl(
      _ChangedKeyword _value, $Res Function(_ChangedKeyword) _then)
      : super(_value, (v) => _then(v as _ChangedKeyword));

  @override
  _ChangedKeyword get _value => super._value as _ChangedKeyword;

  @override
  $Res call({
    Object? keyword = freezed,
  }) {
    return _then(_ChangedKeyword(
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ChangedKeyword implements _ChangedKeyword {
  const _$_ChangedKeyword({this.keyword});

  @override
  final String? keyword;

  @override
  String toString() {
    return 'SearchUserWatcherEvent.changedKeyword(keyword: $keyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangedKeyword &&
            const DeepCollectionEquality().equals(other.keyword, keyword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(keyword));

  @JsonKey(ignore: true)
  @override
  _$ChangedKeywordCopyWith<_ChangedKeyword> get copyWith =>
      __$ChangedKeywordCopyWithImpl<_ChangedKeyword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? keyword) changedKeyword,
    required TResult Function() pressedSearch,
    required TResult Function(int id) pressedFollow,
    required TResult Function(int? id) changedId,
  }) {
    return changedKeyword(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? keyword)? changedKeyword,
    TResult Function()? pressedSearch,
    TResult Function(int id)? pressedFollow,
    TResult Function(int? id)? changedId,
  }) {
    return changedKeyword?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? keyword)? changedKeyword,
    TResult Function()? pressedSearch,
    TResult Function(int id)? pressedFollow,
    TResult Function(int? id)? changedId,
    required TResult orElse(),
  }) {
    if (changedKeyword != null) {
      return changedKeyword(keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedKeyword value) changedKeyword,
    required TResult Function(_PressedSearch value) pressedSearch,
    required TResult Function(_PressedFollow value) pressedFollow,
    required TResult Function(_ChangedId value) changedId,
  }) {
    return changedKeyword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangedKeyword value)? changedKeyword,
    TResult Function(_PressedSearch value)? pressedSearch,
    TResult Function(_PressedFollow value)? pressedFollow,
    TResult Function(_ChangedId value)? changedId,
  }) {
    return changedKeyword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedKeyword value)? changedKeyword,
    TResult Function(_PressedSearch value)? pressedSearch,
    TResult Function(_PressedFollow value)? pressedFollow,
    TResult Function(_ChangedId value)? changedId,
    required TResult orElse(),
  }) {
    if (changedKeyword != null) {
      return changedKeyword(this);
    }
    return orElse();
  }
}

abstract class _ChangedKeyword implements SearchUserWatcherEvent {
  const factory _ChangedKeyword({String? keyword}) = _$_ChangedKeyword;

  String? get keyword;
  @JsonKey(ignore: true)
  _$ChangedKeywordCopyWith<_ChangedKeyword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PressedSearchCopyWith<$Res> {
  factory _$PressedSearchCopyWith(
          _PressedSearch value, $Res Function(_PressedSearch) then) =
      __$PressedSearchCopyWithImpl<$Res>;
}

/// @nodoc
class __$PressedSearchCopyWithImpl<$Res>
    extends _$SearchUserWatcherEventCopyWithImpl<$Res>
    implements _$PressedSearchCopyWith<$Res> {
  __$PressedSearchCopyWithImpl(
      _PressedSearch _value, $Res Function(_PressedSearch) _then)
      : super(_value, (v) => _then(v as _PressedSearch));

  @override
  _PressedSearch get _value => super._value as _PressedSearch;
}

/// @nodoc

class _$_PressedSearch implements _PressedSearch {
  const _$_PressedSearch();

  @override
  String toString() {
    return 'SearchUserWatcherEvent.pressedSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PressedSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? keyword) changedKeyword,
    required TResult Function() pressedSearch,
    required TResult Function(int id) pressedFollow,
    required TResult Function(int? id) changedId,
  }) {
    return pressedSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? keyword)? changedKeyword,
    TResult Function()? pressedSearch,
    TResult Function(int id)? pressedFollow,
    TResult Function(int? id)? changedId,
  }) {
    return pressedSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? keyword)? changedKeyword,
    TResult Function()? pressedSearch,
    TResult Function(int id)? pressedFollow,
    TResult Function(int? id)? changedId,
    required TResult orElse(),
  }) {
    if (pressedSearch != null) {
      return pressedSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedKeyword value) changedKeyword,
    required TResult Function(_PressedSearch value) pressedSearch,
    required TResult Function(_PressedFollow value) pressedFollow,
    required TResult Function(_ChangedId value) changedId,
  }) {
    return pressedSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangedKeyword value)? changedKeyword,
    TResult Function(_PressedSearch value)? pressedSearch,
    TResult Function(_PressedFollow value)? pressedFollow,
    TResult Function(_ChangedId value)? changedId,
  }) {
    return pressedSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedKeyword value)? changedKeyword,
    TResult Function(_PressedSearch value)? pressedSearch,
    TResult Function(_PressedFollow value)? pressedFollow,
    TResult Function(_ChangedId value)? changedId,
    required TResult orElse(),
  }) {
    if (pressedSearch != null) {
      return pressedSearch(this);
    }
    return orElse();
  }
}

abstract class _PressedSearch implements SearchUserWatcherEvent {
  const factory _PressedSearch() = _$_PressedSearch;
}

/// @nodoc
abstract class _$PressedFollowCopyWith<$Res> {
  factory _$PressedFollowCopyWith(
          _PressedFollow value, $Res Function(_PressedFollow) then) =
      __$PressedFollowCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$PressedFollowCopyWithImpl<$Res>
    extends _$SearchUserWatcherEventCopyWithImpl<$Res>
    implements _$PressedFollowCopyWith<$Res> {
  __$PressedFollowCopyWithImpl(
      _PressedFollow _value, $Res Function(_PressedFollow) _then)
      : super(_value, (v) => _then(v as _PressedFollow));

  @override
  _PressedFollow get _value => super._value as _PressedFollow;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_PressedFollow(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PressedFollow implements _PressedFollow {
  const _$_PressedFollow({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'SearchUserWatcherEvent.pressedFollow(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PressedFollow &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$PressedFollowCopyWith<_PressedFollow> get copyWith =>
      __$PressedFollowCopyWithImpl<_PressedFollow>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? keyword) changedKeyword,
    required TResult Function() pressedSearch,
    required TResult Function(int id) pressedFollow,
    required TResult Function(int? id) changedId,
  }) {
    return pressedFollow(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? keyword)? changedKeyword,
    TResult Function()? pressedSearch,
    TResult Function(int id)? pressedFollow,
    TResult Function(int? id)? changedId,
  }) {
    return pressedFollow?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? keyword)? changedKeyword,
    TResult Function()? pressedSearch,
    TResult Function(int id)? pressedFollow,
    TResult Function(int? id)? changedId,
    required TResult orElse(),
  }) {
    if (pressedFollow != null) {
      return pressedFollow(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedKeyword value) changedKeyword,
    required TResult Function(_PressedSearch value) pressedSearch,
    required TResult Function(_PressedFollow value) pressedFollow,
    required TResult Function(_ChangedId value) changedId,
  }) {
    return pressedFollow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangedKeyword value)? changedKeyword,
    TResult Function(_PressedSearch value)? pressedSearch,
    TResult Function(_PressedFollow value)? pressedFollow,
    TResult Function(_ChangedId value)? changedId,
  }) {
    return pressedFollow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedKeyword value)? changedKeyword,
    TResult Function(_PressedSearch value)? pressedSearch,
    TResult Function(_PressedFollow value)? pressedFollow,
    TResult Function(_ChangedId value)? changedId,
    required TResult orElse(),
  }) {
    if (pressedFollow != null) {
      return pressedFollow(this);
    }
    return orElse();
  }
}

abstract class _PressedFollow implements SearchUserWatcherEvent {
  const factory _PressedFollow({required int id}) = _$_PressedFollow;

  int get id;
  @JsonKey(ignore: true)
  _$PressedFollowCopyWith<_PressedFollow> get copyWith =>
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
    extends _$SearchUserWatcherEventCopyWithImpl<$Res>
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
    return 'SearchUserWatcherEvent.changedId(id: $id)';
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
    required TResult Function(String? keyword) changedKeyword,
    required TResult Function() pressedSearch,
    required TResult Function(int id) pressedFollow,
    required TResult Function(int? id) changedId,
  }) {
    return changedId(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? keyword)? changedKeyword,
    TResult Function()? pressedSearch,
    TResult Function(int id)? pressedFollow,
    TResult Function(int? id)? changedId,
  }) {
    return changedId?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? keyword)? changedKeyword,
    TResult Function()? pressedSearch,
    TResult Function(int id)? pressedFollow,
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
    required TResult Function(_ChangedKeyword value) changedKeyword,
    required TResult Function(_PressedSearch value) pressedSearch,
    required TResult Function(_PressedFollow value) pressedFollow,
    required TResult Function(_ChangedId value) changedId,
  }) {
    return changedId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangedKeyword value)? changedKeyword,
    TResult Function(_PressedSearch value)? pressedSearch,
    TResult Function(_PressedFollow value)? pressedFollow,
    TResult Function(_ChangedId value)? changedId,
  }) {
    return changedId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedKeyword value)? changedKeyword,
    TResult Function(_PressedSearch value)? pressedSearch,
    TResult Function(_PressedFollow value)? pressedFollow,
    TResult Function(_ChangedId value)? changedId,
    required TResult orElse(),
  }) {
    if (changedId != null) {
      return changedId(this);
    }
    return orElse();
  }
}

abstract class _ChangedId implements SearchUserWatcherEvent {
  const factory _ChangedId({int? id}) = _$_ChangedId;

  int? get id;
  @JsonKey(ignore: true)
  _$ChangedIdCopyWith<_ChangedId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchUserWatcherStateTearOff {
  const _$SearchUserWatcherStateTearOff();

  _SearchUserWatcherState call(
      {required bool isLoading,
      required bool showErrors,
      required Either<InvalidInputFailure, String> keywordTitle,
      Either<Failure, List<UserEntity>>? failureOrSuccess,
      int? id}) {
    return _SearchUserWatcherState(
      isLoading: isLoading,
      showErrors: showErrors,
      keywordTitle: keywordTitle,
      failureOrSuccess: failureOrSuccess,
      id: id,
    );
  }
}

/// @nodoc
const $SearchUserWatcherState = _$SearchUserWatcherStateTearOff();

/// @nodoc
mixin _$SearchUserWatcherState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  Either<InvalidInputFailure, String> get keywordTitle =>
      throw _privateConstructorUsedError;
  Either<Failure, List<UserEntity>>? get failureOrSuccess =>
      throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchUserWatcherStateCopyWith<SearchUserWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUserWatcherStateCopyWith<$Res> {
  factory $SearchUserWatcherStateCopyWith(SearchUserWatcherState value,
          $Res Function(SearchUserWatcherState) then) =
      _$SearchUserWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool showErrors,
      Either<InvalidInputFailure, String> keywordTitle,
      Either<Failure, List<UserEntity>>? failureOrSuccess,
      int? id});
}

/// @nodoc
class _$SearchUserWatcherStateCopyWithImpl<$Res>
    implements $SearchUserWatcherStateCopyWith<$Res> {
  _$SearchUserWatcherStateCopyWithImpl(this._value, this._then);

  final SearchUserWatcherState _value;
  // ignore: unused_field
  final $Res Function(SearchUserWatcherState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? showErrors = freezed,
    Object? keywordTitle = freezed,
    Object? failureOrSuccess = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      keywordTitle: keywordTitle == freezed
          ? _value.keywordTitle
          : keywordTitle // ignore: cast_nullable_to_non_nullable
              as Either<InvalidInputFailure, String>,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<UserEntity>>?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$SearchUserWatcherStateCopyWith<$Res>
    implements $SearchUserWatcherStateCopyWith<$Res> {
  factory _$SearchUserWatcherStateCopyWith(_SearchUserWatcherState value,
          $Res Function(_SearchUserWatcherState) then) =
      __$SearchUserWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool showErrors,
      Either<InvalidInputFailure, String> keywordTitle,
      Either<Failure, List<UserEntity>>? failureOrSuccess,
      int? id});
}

/// @nodoc
class __$SearchUserWatcherStateCopyWithImpl<$Res>
    extends _$SearchUserWatcherStateCopyWithImpl<$Res>
    implements _$SearchUserWatcherStateCopyWith<$Res> {
  __$SearchUserWatcherStateCopyWithImpl(_SearchUserWatcherState _value,
      $Res Function(_SearchUserWatcherState) _then)
      : super(_value, (v) => _then(v as _SearchUserWatcherState));

  @override
  _SearchUserWatcherState get _value => super._value as _SearchUserWatcherState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? showErrors = freezed,
    Object? keywordTitle = freezed,
    Object? failureOrSuccess = freezed,
    Object? id = freezed,
  }) {
    return _then(_SearchUserWatcherState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      keywordTitle: keywordTitle == freezed
          ? _value.keywordTitle
          : keywordTitle // ignore: cast_nullable_to_non_nullable
              as Either<InvalidInputFailure, String>,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<UserEntity>>?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SearchUserWatcherState implements _SearchUserWatcherState {
  const _$_SearchUserWatcherState(
      {required this.isLoading,
      required this.showErrors,
      required this.keywordTitle,
      this.failureOrSuccess,
      this.id});

  @override
  final bool isLoading;
  @override
  final bool showErrors;
  @override
  final Either<InvalidInputFailure, String> keywordTitle;
  @override
  final Either<Failure, List<UserEntity>>? failureOrSuccess;
  @override
  final int? id;

  @override
  String toString() {
    return 'SearchUserWatcherState(isLoading: $isLoading, showErrors: $showErrors, keywordTitle: $keywordTitle, failureOrSuccess: $failureOrSuccess, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchUserWatcherState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality()
                .equals(other.keywordTitle, keywordTitle) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(keywordTitle),
      const DeepCollectionEquality().hash(failureOrSuccess),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$SearchUserWatcherStateCopyWith<_SearchUserWatcherState> get copyWith =>
      __$SearchUserWatcherStateCopyWithImpl<_SearchUserWatcherState>(
          this, _$identity);
}

abstract class _SearchUserWatcherState implements SearchUserWatcherState {
  const factory _SearchUserWatcherState(
      {required bool isLoading,
      required bool showErrors,
      required Either<InvalidInputFailure, String> keywordTitle,
      Either<Failure, List<UserEntity>>? failureOrSuccess,
      int? id}) = _$_SearchUserWatcherState;

  @override
  bool get isLoading;
  @override
  bool get showErrors;
  @override
  Either<InvalidInputFailure, String> get keywordTitle;
  @override
  Either<Failure, List<UserEntity>>? get failureOrSuccess;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$SearchUserWatcherStateCopyWith<_SearchUserWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
