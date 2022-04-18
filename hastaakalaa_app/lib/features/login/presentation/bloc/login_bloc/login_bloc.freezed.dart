// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  _PressedSend pressedSend() {
    return const _PressedSend();
  }

  _ChangedUsername changedUsername({String? username}) {
    return _ChangedUsername(
      username: username,
    );
  }

  _ChangedPassword changedPassword({String? password}) {
    return _ChangedPassword(
      password: password,
    );
  }
}

/// @nodoc
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pressedSend,
    required TResult Function(String? username) changedUsername,
    required TResult Function(String? password) changedPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pressedSend,
    TResult Function(String? username)? changedUsername,
    TResult Function(String? password)? changedPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pressedSend,
    TResult Function(String? username)? changedUsername,
    TResult Function(String? password)? changedPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PressedSend value) pressedSend,
    required TResult Function(_ChangedUsername value) changedUsername,
    required TResult Function(_ChangedPassword value) changedPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PressedSend value)? pressedSend,
    TResult Function(_ChangedUsername value)? changedUsername,
    TResult Function(_ChangedPassword value)? changedPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PressedSend value)? pressedSend,
    TResult Function(_ChangedUsername value)? changedUsername,
    TResult Function(_ChangedPassword value)? changedPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$PressedSendCopyWith<$Res> {
  factory _$PressedSendCopyWith(
          _PressedSend value, $Res Function(_PressedSend) then) =
      __$PressedSendCopyWithImpl<$Res>;
}

/// @nodoc
class __$PressedSendCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$PressedSendCopyWith<$Res> {
  __$PressedSendCopyWithImpl(
      _PressedSend _value, $Res Function(_PressedSend) _then)
      : super(_value, (v) => _then(v as _PressedSend));

  @override
  _PressedSend get _value => super._value as _PressedSend;
}

/// @nodoc

class _$_PressedSend implements _PressedSend {
  const _$_PressedSend();

  @override
  String toString() {
    return 'LoginEvent.pressedSend()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PressedSend);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pressedSend,
    required TResult Function(String? username) changedUsername,
    required TResult Function(String? password) changedPassword,
  }) {
    return pressedSend();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pressedSend,
    TResult Function(String? username)? changedUsername,
    TResult Function(String? password)? changedPassword,
  }) {
    return pressedSend?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pressedSend,
    TResult Function(String? username)? changedUsername,
    TResult Function(String? password)? changedPassword,
    required TResult orElse(),
  }) {
    if (pressedSend != null) {
      return pressedSend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PressedSend value) pressedSend,
    required TResult Function(_ChangedUsername value) changedUsername,
    required TResult Function(_ChangedPassword value) changedPassword,
  }) {
    return pressedSend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PressedSend value)? pressedSend,
    TResult Function(_ChangedUsername value)? changedUsername,
    TResult Function(_ChangedPassword value)? changedPassword,
  }) {
    return pressedSend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PressedSend value)? pressedSend,
    TResult Function(_ChangedUsername value)? changedUsername,
    TResult Function(_ChangedPassword value)? changedPassword,
    required TResult orElse(),
  }) {
    if (pressedSend != null) {
      return pressedSend(this);
    }
    return orElse();
  }
}

abstract class _PressedSend implements LoginEvent {
  const factory _PressedSend() = _$_PressedSend;
}

/// @nodoc
abstract class _$ChangedUsernameCopyWith<$Res> {
  factory _$ChangedUsernameCopyWith(
          _ChangedUsername value, $Res Function(_ChangedUsername) then) =
      __$ChangedUsernameCopyWithImpl<$Res>;
  $Res call({String? username});
}

/// @nodoc
class __$ChangedUsernameCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$ChangedUsernameCopyWith<$Res> {
  __$ChangedUsernameCopyWithImpl(
      _ChangedUsername _value, $Res Function(_ChangedUsername) _then)
      : super(_value, (v) => _then(v as _ChangedUsername));

  @override
  _ChangedUsername get _value => super._value as _ChangedUsername;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_ChangedUsername(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ChangedUsername implements _ChangedUsername {
  const _$_ChangedUsername({this.username});

  @override
  final String? username;

  @override
  String toString() {
    return 'LoginEvent.changedUsername(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangedUsername &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$ChangedUsernameCopyWith<_ChangedUsername> get copyWith =>
      __$ChangedUsernameCopyWithImpl<_ChangedUsername>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pressedSend,
    required TResult Function(String? username) changedUsername,
    required TResult Function(String? password) changedPassword,
  }) {
    return changedUsername(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pressedSend,
    TResult Function(String? username)? changedUsername,
    TResult Function(String? password)? changedPassword,
  }) {
    return changedUsername?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pressedSend,
    TResult Function(String? username)? changedUsername,
    TResult Function(String? password)? changedPassword,
    required TResult orElse(),
  }) {
    if (changedUsername != null) {
      return changedUsername(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PressedSend value) pressedSend,
    required TResult Function(_ChangedUsername value) changedUsername,
    required TResult Function(_ChangedPassword value) changedPassword,
  }) {
    return changedUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PressedSend value)? pressedSend,
    TResult Function(_ChangedUsername value)? changedUsername,
    TResult Function(_ChangedPassword value)? changedPassword,
  }) {
    return changedUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PressedSend value)? pressedSend,
    TResult Function(_ChangedUsername value)? changedUsername,
    TResult Function(_ChangedPassword value)? changedPassword,
    required TResult orElse(),
  }) {
    if (changedUsername != null) {
      return changedUsername(this);
    }
    return orElse();
  }
}

abstract class _ChangedUsername implements LoginEvent {
  const factory _ChangedUsername({String? username}) = _$_ChangedUsername;

  String? get username;
  @JsonKey(ignore: true)
  _$ChangedUsernameCopyWith<_ChangedUsername> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangedPasswordCopyWith<$Res> {
  factory _$ChangedPasswordCopyWith(
          _ChangedPassword value, $Res Function(_ChangedPassword) then) =
      __$ChangedPasswordCopyWithImpl<$Res>;
  $Res call({String? password});
}

/// @nodoc
class __$ChangedPasswordCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$ChangedPasswordCopyWith<$Res> {
  __$ChangedPasswordCopyWithImpl(
      _ChangedPassword _value, $Res Function(_ChangedPassword) _then)
      : super(_value, (v) => _then(v as _ChangedPassword));

  @override
  _ChangedPassword get _value => super._value as _ChangedPassword;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_ChangedPassword(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ChangedPassword implements _ChangedPassword {
  const _$_ChangedPassword({this.password});

  @override
  final String? password;

  @override
  String toString() {
    return 'LoginEvent.changedPassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangedPassword &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$ChangedPasswordCopyWith<_ChangedPassword> get copyWith =>
      __$ChangedPasswordCopyWithImpl<_ChangedPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pressedSend,
    required TResult Function(String? username) changedUsername,
    required TResult Function(String? password) changedPassword,
  }) {
    return changedPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pressedSend,
    TResult Function(String? username)? changedUsername,
    TResult Function(String? password)? changedPassword,
  }) {
    return changedPassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pressedSend,
    TResult Function(String? username)? changedUsername,
    TResult Function(String? password)? changedPassword,
    required TResult orElse(),
  }) {
    if (changedPassword != null) {
      return changedPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PressedSend value) pressedSend,
    required TResult Function(_ChangedUsername value) changedUsername,
    required TResult Function(_ChangedPassword value) changedPassword,
  }) {
    return changedPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PressedSend value)? pressedSend,
    TResult Function(_ChangedUsername value)? changedUsername,
    TResult Function(_ChangedPassword value)? changedPassword,
  }) {
    return changedPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PressedSend value)? pressedSend,
    TResult Function(_ChangedUsername value)? changedUsername,
    TResult Function(_ChangedPassword value)? changedPassword,
    required TResult orElse(),
  }) {
    if (changedPassword != null) {
      return changedPassword(this);
    }
    return orElse();
  }
}

abstract class _ChangedPassword implements LoginEvent {
  const factory _ChangedPassword({String? password}) = _$_ChangedPassword;

  String? get password;
  @JsonKey(ignore: true)
  _$ChangedPasswordCopyWith<_ChangedPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _LoginState call(
      {required bool isLoading,
      required Either<InvalidInputFailure, String> username,
      required Either<InvalidInputFailure, String> password,
      required bool showErrors,
      Either<Failure, Unit>? failureOrSuccess}) {
    return _LoginState(
      isLoading: isLoading,
      username: username,
      password: password,
      showErrors: showErrors,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  bool get isLoading => throw _privateConstructorUsedError;
  Either<InvalidInputFailure, String> get username =>
      throw _privateConstructorUsedError;
  Either<InvalidInputFailure, String> get password =>
      throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  Either<Failure, Unit>? get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Either<InvalidInputFailure, String> username,
      Either<InvalidInputFailure, String> password,
      bool showErrors,
      Either<Failure, Unit>? failureOrSuccess});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? showErrors = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Either<InvalidInputFailure, String>,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Either<InvalidInputFailure, String>,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Unit>?,
    ));
  }
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Either<InvalidInputFailure, String> username,
      Either<InvalidInputFailure, String> password,
      bool showErrors,
      Either<Failure, Unit>? failureOrSuccess});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? showErrors = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_LoginState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Either<InvalidInputFailure, String>,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Either<InvalidInputFailure, String>,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Unit>?,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {required this.isLoading,
      required this.username,
      required this.password,
      required this.showErrors,
      this.failureOrSuccess});

  @override
  final bool isLoading;
  @override
  final Either<InvalidInputFailure, String> username;
  @override
  final Either<InvalidInputFailure, String> password;
  @override
  final bool showErrors;
  @override
  final Either<Failure, Unit>? failureOrSuccess;

  @override
  String toString() {
    return 'LoginState(isLoading: $isLoading, username: $username, password: $password, showErrors: $showErrors, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required bool isLoading,
      required Either<InvalidInputFailure, String> username,
      required Either<InvalidInputFailure, String> password,
      required bool showErrors,
      Either<Failure, Unit>? failureOrSuccess}) = _$_LoginState;

  @override
  bool get isLoading;
  @override
  Either<InvalidInputFailure, String> get username;
  @override
  Either<InvalidInputFailure, String> get password;
  @override
  bool get showErrors;
  @override
  Either<Failure, Unit>? get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
