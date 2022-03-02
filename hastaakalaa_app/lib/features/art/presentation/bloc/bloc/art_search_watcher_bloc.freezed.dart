// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'art_search_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArtSearchWatcherEventTearOff {
  const _$ArtSearchWatcherEventTearOff();

  _ChangedKeyword changedKeyword({String? keyword}) {
    return _ChangedKeyword(
      keyword: keyword,
    );
  }

  _PressedSearch pressedSearch() {
    return const _PressedSearch();
  }
}

/// @nodoc
const $ArtSearchWatcherEvent = _$ArtSearchWatcherEventTearOff();

/// @nodoc
mixin _$ArtSearchWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? keyword) changedKeyword,
    required TResult Function() pressedSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? keyword)? changedKeyword,
    TResult Function()? pressedSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? keyword)? changedKeyword,
    TResult Function()? pressedSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedKeyword value) changedKeyword,
    required TResult Function(_PressedSearch value) pressedSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangedKeyword value)? changedKeyword,
    TResult Function(_PressedSearch value)? pressedSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedKeyword value)? changedKeyword,
    TResult Function(_PressedSearch value)? pressedSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtSearchWatcherEventCopyWith<$Res> {
  factory $ArtSearchWatcherEventCopyWith(ArtSearchWatcherEvent value,
          $Res Function(ArtSearchWatcherEvent) then) =
      _$ArtSearchWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArtSearchWatcherEventCopyWithImpl<$Res>
    implements $ArtSearchWatcherEventCopyWith<$Res> {
  _$ArtSearchWatcherEventCopyWithImpl(this._value, this._then);

  final ArtSearchWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ArtSearchWatcherEvent) _then;
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
    extends _$ArtSearchWatcherEventCopyWithImpl<$Res>
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
    return 'ArtSearchWatcherEvent.changedKeyword(keyword: $keyword)';
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
  }) {
    return changedKeyword(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? keyword)? changedKeyword,
    TResult Function()? pressedSearch,
  }) {
    return changedKeyword?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? keyword)? changedKeyword,
    TResult Function()? pressedSearch,
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
  }) {
    return changedKeyword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangedKeyword value)? changedKeyword,
    TResult Function(_PressedSearch value)? pressedSearch,
  }) {
    return changedKeyword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedKeyword value)? changedKeyword,
    TResult Function(_PressedSearch value)? pressedSearch,
    required TResult orElse(),
  }) {
    if (changedKeyword != null) {
      return changedKeyword(this);
    }
    return orElse();
  }
}

abstract class _ChangedKeyword implements ArtSearchWatcherEvent {
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
    extends _$ArtSearchWatcherEventCopyWithImpl<$Res>
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
    return 'ArtSearchWatcherEvent.pressedSearch()';
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
  }) {
    return pressedSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? keyword)? changedKeyword,
    TResult Function()? pressedSearch,
  }) {
    return pressedSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? keyword)? changedKeyword,
    TResult Function()? pressedSearch,
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
  }) {
    return pressedSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangedKeyword value)? changedKeyword,
    TResult Function(_PressedSearch value)? pressedSearch,
  }) {
    return pressedSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedKeyword value)? changedKeyword,
    TResult Function(_PressedSearch value)? pressedSearch,
    required TResult orElse(),
  }) {
    if (pressedSearch != null) {
      return pressedSearch(this);
    }
    return orElse();
  }
}

abstract class _PressedSearch implements ArtSearchWatcherEvent {
  const factory _PressedSearch() = _$_PressedSearch;
}

/// @nodoc
class _$ArtSearchWatcherStateTearOff {
  const _$ArtSearchWatcherStateTearOff();

  _ArtSearchWatcherState call(
      {required bool isLoading,
      required bool showErrors,
      required Either<InvalidInputFailure, String> keywordTitle,
      Either<Failure, List<ArtEntity>>? failureOrSuccess}) {
    return _ArtSearchWatcherState(
      isLoading: isLoading,
      showErrors: showErrors,
      keywordTitle: keywordTitle,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $ArtSearchWatcherState = _$ArtSearchWatcherStateTearOff();

/// @nodoc
mixin _$ArtSearchWatcherState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  Either<InvalidInputFailure, String> get keywordTitle =>
      throw _privateConstructorUsedError;
  Either<Failure, List<ArtEntity>>? get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArtSearchWatcherStateCopyWith<ArtSearchWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtSearchWatcherStateCopyWith<$Res> {
  factory $ArtSearchWatcherStateCopyWith(ArtSearchWatcherState value,
          $Res Function(ArtSearchWatcherState) then) =
      _$ArtSearchWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool showErrors,
      Either<InvalidInputFailure, String> keywordTitle,
      Either<Failure, List<ArtEntity>>? failureOrSuccess});
}

/// @nodoc
class _$ArtSearchWatcherStateCopyWithImpl<$Res>
    implements $ArtSearchWatcherStateCopyWith<$Res> {
  _$ArtSearchWatcherStateCopyWithImpl(this._value, this._then);

  final ArtSearchWatcherState _value;
  // ignore: unused_field
  final $Res Function(ArtSearchWatcherState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? showErrors = freezed,
    Object? keywordTitle = freezed,
    Object? failureOrSuccess = freezed,
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
              as Either<Failure, List<ArtEntity>>?,
    ));
  }
}

/// @nodoc
abstract class _$ArtSearchWatcherStateCopyWith<$Res>
    implements $ArtSearchWatcherStateCopyWith<$Res> {
  factory _$ArtSearchWatcherStateCopyWith(_ArtSearchWatcherState value,
          $Res Function(_ArtSearchWatcherState) then) =
      __$ArtSearchWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool showErrors,
      Either<InvalidInputFailure, String> keywordTitle,
      Either<Failure, List<ArtEntity>>? failureOrSuccess});
}

/// @nodoc
class __$ArtSearchWatcherStateCopyWithImpl<$Res>
    extends _$ArtSearchWatcherStateCopyWithImpl<$Res>
    implements _$ArtSearchWatcherStateCopyWith<$Res> {
  __$ArtSearchWatcherStateCopyWithImpl(_ArtSearchWatcherState _value,
      $Res Function(_ArtSearchWatcherState) _then)
      : super(_value, (v) => _then(v as _ArtSearchWatcherState));

  @override
  _ArtSearchWatcherState get _value => super._value as _ArtSearchWatcherState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? showErrors = freezed,
    Object? keywordTitle = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_ArtSearchWatcherState(
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
              as Either<Failure, List<ArtEntity>>?,
    ));
  }
}

/// @nodoc

class _$_ArtSearchWatcherState implements _ArtSearchWatcherState {
  const _$_ArtSearchWatcherState(
      {required this.isLoading,
      required this.showErrors,
      required this.keywordTitle,
      this.failureOrSuccess});

  @override
  final bool isLoading;
  @override
  final bool showErrors;
  @override
  final Either<InvalidInputFailure, String> keywordTitle;
  @override
  final Either<Failure, List<ArtEntity>>? failureOrSuccess;

  @override
  String toString() {
    return 'ArtSearchWatcherState(isLoading: $isLoading, showErrors: $showErrors, keywordTitle: $keywordTitle, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArtSearchWatcherState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality()
                .equals(other.keywordTitle, keywordTitle) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(keywordTitle),
      const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$ArtSearchWatcherStateCopyWith<_ArtSearchWatcherState> get copyWith =>
      __$ArtSearchWatcherStateCopyWithImpl<_ArtSearchWatcherState>(
          this, _$identity);
}

abstract class _ArtSearchWatcherState implements ArtSearchWatcherState {
  const factory _ArtSearchWatcherState(
          {required bool isLoading,
          required bool showErrors,
          required Either<InvalidInputFailure, String> keywordTitle,
          Either<Failure, List<ArtEntity>>? failureOrSuccess}) =
      _$_ArtSearchWatcherState;

  @override
  bool get isLoading;
  @override
  bool get showErrors;
  @override
  Either<InvalidInputFailure, String> get keywordTitle;
  @override
  Either<Failure, List<ArtEntity>>? get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$ArtSearchWatcherStateCopyWith<_ArtSearchWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
