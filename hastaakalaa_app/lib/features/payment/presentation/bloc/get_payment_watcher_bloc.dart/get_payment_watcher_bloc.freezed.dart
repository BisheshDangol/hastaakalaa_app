// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_payment_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetPaymentWatcherEventTearOff {
  const _$GetPaymentWatcherEventTearOff();

  _RetrievePaymentList retrievePaymentList() {
    return const _RetrievePaymentList();
  }
}

/// @nodoc
const $GetPaymentWatcherEvent = _$GetPaymentWatcherEventTearOff();

/// @nodoc
mixin _$GetPaymentWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrievePaymentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? retrievePaymentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrievePaymentList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrievePaymentList value) retrievePaymentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RetrievePaymentList value)? retrievePaymentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrievePaymentList value)? retrievePaymentList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPaymentWatcherEventCopyWith<$Res> {
  factory $GetPaymentWatcherEventCopyWith(GetPaymentWatcherEvent value,
          $Res Function(GetPaymentWatcherEvent) then) =
      _$GetPaymentWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPaymentWatcherEventCopyWithImpl<$Res>
    implements $GetPaymentWatcherEventCopyWith<$Res> {
  _$GetPaymentWatcherEventCopyWithImpl(this._value, this._then);

  final GetPaymentWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(GetPaymentWatcherEvent) _then;
}

/// @nodoc
abstract class _$RetrievePaymentListCopyWith<$Res> {
  factory _$RetrievePaymentListCopyWith(_RetrievePaymentList value,
          $Res Function(_RetrievePaymentList) then) =
      __$RetrievePaymentListCopyWithImpl<$Res>;
}

/// @nodoc
class __$RetrievePaymentListCopyWithImpl<$Res>
    extends _$GetPaymentWatcherEventCopyWithImpl<$Res>
    implements _$RetrievePaymentListCopyWith<$Res> {
  __$RetrievePaymentListCopyWithImpl(
      _RetrievePaymentList _value, $Res Function(_RetrievePaymentList) _then)
      : super(_value, (v) => _then(v as _RetrievePaymentList));

  @override
  _RetrievePaymentList get _value => super._value as _RetrievePaymentList;
}

/// @nodoc

class _$_RetrievePaymentList implements _RetrievePaymentList {
  const _$_RetrievePaymentList();

  @override
  String toString() {
    return 'GetPaymentWatcherEvent.retrievePaymentList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RetrievePaymentList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retrievePaymentList,
  }) {
    return retrievePaymentList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? retrievePaymentList,
  }) {
    return retrievePaymentList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retrievePaymentList,
    required TResult orElse(),
  }) {
    if (retrievePaymentList != null) {
      return retrievePaymentList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrievePaymentList value) retrievePaymentList,
  }) {
    return retrievePaymentList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RetrievePaymentList value)? retrievePaymentList,
  }) {
    return retrievePaymentList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrievePaymentList value)? retrievePaymentList,
    required TResult orElse(),
  }) {
    if (retrievePaymentList != null) {
      return retrievePaymentList(this);
    }
    return orElse();
  }
}

abstract class _RetrievePaymentList implements GetPaymentWatcherEvent {
  const factory _RetrievePaymentList() = _$_RetrievePaymentList;
}

/// @nodoc
class _$GetPaymentWatcherStateTearOff {
  const _$GetPaymentWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(List<PaymentEntity> artList) {
    return _Loaded(
      artList,
    );
  }

  _Failed failed(Failure failure) {
    return _Failed(
      failure,
    );
  }
}

/// @nodoc
const $GetPaymentWatcherState = _$GetPaymentWatcherStateTearOff();

/// @nodoc
mixin _$GetPaymentWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PaymentEntity> artList) loaded,
    required TResult Function(Failure failure) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PaymentEntity> artList)? loaded,
    TResult Function(Failure failure)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PaymentEntity> artList)? loaded,
    TResult Function(Failure failure)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPaymentWatcherStateCopyWith<$Res> {
  factory $GetPaymentWatcherStateCopyWith(GetPaymentWatcherState value,
          $Res Function(GetPaymentWatcherState) then) =
      _$GetPaymentWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPaymentWatcherStateCopyWithImpl<$Res>
    implements $GetPaymentWatcherStateCopyWith<$Res> {
  _$GetPaymentWatcherStateCopyWithImpl(this._value, this._then);

  final GetPaymentWatcherState _value;
  // ignore: unused_field
  final $Res Function(GetPaymentWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$GetPaymentWatcherStateCopyWithImpl<$Res>
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
    return 'GetPaymentWatcherState.initial()';
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
    required TResult Function() loading,
    required TResult Function(List<PaymentEntity> artList) loaded,
    required TResult Function(Failure failure) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PaymentEntity> artList)? loaded,
    TResult Function(Failure failure)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PaymentEntity> artList)? loaded,
    TResult Function(Failure failure)? failed,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GetPaymentWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$GetPaymentWatcherStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'GetPaymentWatcherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PaymentEntity> artList) loaded,
    required TResult Function(Failure failure) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PaymentEntity> artList)? loaded,
    TResult Function(Failure failure)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PaymentEntity> artList)? loaded,
    TResult Function(Failure failure)? failed,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GetPaymentWatcherState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<PaymentEntity> artList});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    extends _$GetPaymentWatcherStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? artList = freezed,
  }) {
    return _then(_Loaded(
      artList == freezed
          ? _value.artList
          : artList // ignore: cast_nullable_to_non_nullable
              as List<PaymentEntity>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.artList);

  @override
  final List<PaymentEntity> artList;

  @override
  String toString() {
    return 'GetPaymentWatcherState.loaded(artList: $artList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.artList, artList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(artList));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PaymentEntity> artList) loaded,
    required TResult Function(Failure failure) failed,
  }) {
    return loaded(artList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PaymentEntity> artList)? loaded,
    TResult Function(Failure failure)? failed,
  }) {
    return loaded?.call(artList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PaymentEntity> artList)? loaded,
    TResult Function(Failure failure)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(artList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements GetPaymentWatcherState {
  const factory _Loaded(List<PaymentEntity> artList) = _$_Loaded;

  List<PaymentEntity> get artList;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$FailedCopyWithImpl<$Res>
    extends _$GetPaymentWatcherStateCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Failed(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'GetPaymentWatcherState.failed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failed &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$FailedCopyWith<_Failed> get copyWith =>
      __$FailedCopyWithImpl<_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PaymentEntity> artList) loaded,
    required TResult Function(Failure failure) failed,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PaymentEntity> artList)? loaded,
    TResult Function(Failure failure)? failed,
  }) {
    return failed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PaymentEntity> artList)? loaded,
    TResult Function(Failure failure)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements GetPaymentWatcherState {
  const factory _Failed(Failure failure) = _$_Failed;

  Failure get failure;
  @JsonKey(ignore: true)
  _$FailedCopyWith<_Failed> get copyWith => throw _privateConstructorUsedError;
}
