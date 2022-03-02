// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'art_list_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArtListWatcherEventTearOff {
  const _$ArtListWatcherEventTearOff();

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
const $ArtListWatcherEvent = _$ArtListWatcherEventTearOff();

/// @nodoc
mixin _$ArtListWatcherEvent {
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
abstract class $ArtListWatcherEventCopyWith<$Res> {
  factory $ArtListWatcherEventCopyWith(
          ArtListWatcherEvent value, $Res Function(ArtListWatcherEvent) then) =
      _$ArtListWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArtListWatcherEventCopyWithImpl<$Res>
    implements $ArtListWatcherEventCopyWith<$Res> {
  _$ArtListWatcherEventCopyWithImpl(this._value, this._then);

  final ArtListWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ArtListWatcherEvent) _then;
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
    extends _$ArtListWatcherEventCopyWithImpl<$Res>
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
    return 'ArtListWatcherEvent.changedKeyword(keyword: $keyword)';
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

abstract class _ChangedKeyword implements ArtListWatcherEvent {
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
    extends _$ArtListWatcherEventCopyWithImpl<$Res>
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
    return 'ArtListWatcherEvent.pressedSearch()';
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

abstract class _PressedSearch implements ArtListWatcherEvent {
  const factory _PressedSearch() = _$_PressedSearch;
}

/// @nodoc
class _$ArtListWatcherStateTearOff {
  const _$ArtListWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }
}

/// @nodoc
const $ArtListWatcherState = _$ArtListWatcherStateTearOff();

/// @nodoc
mixin _$ArtListWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtListWatcherStateCopyWith<$Res> {
  factory $ArtListWatcherStateCopyWith(
          ArtListWatcherState value, $Res Function(ArtListWatcherState) then) =
      _$ArtListWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArtListWatcherStateCopyWithImpl<$Res>
    implements $ArtListWatcherStateCopyWith<$Res> {
  _$ArtListWatcherStateCopyWithImpl(this._value, this._then);

  final ArtListWatcherState _value;
  // ignore: unused_field
  final $Res Function(ArtListWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ArtListWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ArtListWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ArtListWatcherState {
  const factory _Initial() = _$_Initial;
}
