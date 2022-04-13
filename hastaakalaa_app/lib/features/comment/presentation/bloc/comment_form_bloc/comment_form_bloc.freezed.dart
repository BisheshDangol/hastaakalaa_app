// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommentFormEventTearOff {
  const _$CommentFormEventTearOff();

  _PressedCreate pressedCreate() {
    return const _PressedCreate();
  }

  _ChangedDescription changedDescription({String? description}) {
    return _ChangedDescription(
      description: description,
    );
  }
}

/// @nodoc
const $CommentFormEvent = _$CommentFormEventTearOff();

/// @nodoc
mixin _$CommentFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pressedCreate,
    required TResult Function(String? description) changedDescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pressedCreate,
    TResult Function(String? description)? changedDescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pressedCreate,
    TResult Function(String? description)? changedDescription,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PressedCreate value) pressedCreate,
    required TResult Function(_ChangedDescription value) changedDescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PressedCreate value)? pressedCreate,
    TResult Function(_ChangedDescription value)? changedDescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PressedCreate value)? pressedCreate,
    TResult Function(_ChangedDescription value)? changedDescription,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentFormEventCopyWith<$Res> {
  factory $CommentFormEventCopyWith(
          CommentFormEvent value, $Res Function(CommentFormEvent) then) =
      _$CommentFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentFormEventCopyWithImpl<$Res>
    implements $CommentFormEventCopyWith<$Res> {
  _$CommentFormEventCopyWithImpl(this._value, this._then);

  final CommentFormEvent _value;
  // ignore: unused_field
  final $Res Function(CommentFormEvent) _then;
}

/// @nodoc
abstract class _$PressedCreateCopyWith<$Res> {
  factory _$PressedCreateCopyWith(
          _PressedCreate value, $Res Function(_PressedCreate) then) =
      __$PressedCreateCopyWithImpl<$Res>;
}

/// @nodoc
class __$PressedCreateCopyWithImpl<$Res>
    extends _$CommentFormEventCopyWithImpl<$Res>
    implements _$PressedCreateCopyWith<$Res> {
  __$PressedCreateCopyWithImpl(
      _PressedCreate _value, $Res Function(_PressedCreate) _then)
      : super(_value, (v) => _then(v as _PressedCreate));

  @override
  _PressedCreate get _value => super._value as _PressedCreate;
}

/// @nodoc

class _$_PressedCreate implements _PressedCreate {
  const _$_PressedCreate();

  @override
  String toString() {
    return 'CommentFormEvent.pressedCreate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PressedCreate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pressedCreate,
    required TResult Function(String? description) changedDescription,
  }) {
    return pressedCreate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pressedCreate,
    TResult Function(String? description)? changedDescription,
  }) {
    return pressedCreate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pressedCreate,
    TResult Function(String? description)? changedDescription,
    required TResult orElse(),
  }) {
    if (pressedCreate != null) {
      return pressedCreate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PressedCreate value) pressedCreate,
    required TResult Function(_ChangedDescription value) changedDescription,
  }) {
    return pressedCreate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PressedCreate value)? pressedCreate,
    TResult Function(_ChangedDescription value)? changedDescription,
  }) {
    return pressedCreate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PressedCreate value)? pressedCreate,
    TResult Function(_ChangedDescription value)? changedDescription,
    required TResult orElse(),
  }) {
    if (pressedCreate != null) {
      return pressedCreate(this);
    }
    return orElse();
  }
}

abstract class _PressedCreate implements CommentFormEvent {
  const factory _PressedCreate() = _$_PressedCreate;
}

/// @nodoc
abstract class _$ChangedDescriptionCopyWith<$Res> {
  factory _$ChangedDescriptionCopyWith(
          _ChangedDescription value, $Res Function(_ChangedDescription) then) =
      __$ChangedDescriptionCopyWithImpl<$Res>;
  $Res call({String? description});
}

/// @nodoc
class __$ChangedDescriptionCopyWithImpl<$Res>
    extends _$CommentFormEventCopyWithImpl<$Res>
    implements _$ChangedDescriptionCopyWith<$Res> {
  __$ChangedDescriptionCopyWithImpl(
      _ChangedDescription _value, $Res Function(_ChangedDescription) _then)
      : super(_value, (v) => _then(v as _ChangedDescription));

  @override
  _ChangedDescription get _value => super._value as _ChangedDescription;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_ChangedDescription(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ChangedDescription implements _ChangedDescription {
  const _$_ChangedDescription({this.description});

  @override
  final String? description;

  @override
  String toString() {
    return 'CommentFormEvent.changedDescription(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangedDescription &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$ChangedDescriptionCopyWith<_ChangedDescription> get copyWith =>
      __$ChangedDescriptionCopyWithImpl<_ChangedDescription>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pressedCreate,
    required TResult Function(String? description) changedDescription,
  }) {
    return changedDescription(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pressedCreate,
    TResult Function(String? description)? changedDescription,
  }) {
    return changedDescription?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pressedCreate,
    TResult Function(String? description)? changedDescription,
    required TResult orElse(),
  }) {
    if (changedDescription != null) {
      return changedDescription(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PressedCreate value) pressedCreate,
    required TResult Function(_ChangedDescription value) changedDescription,
  }) {
    return changedDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PressedCreate value)? pressedCreate,
    TResult Function(_ChangedDescription value)? changedDescription,
  }) {
    return changedDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PressedCreate value)? pressedCreate,
    TResult Function(_ChangedDescription value)? changedDescription,
    required TResult orElse(),
  }) {
    if (changedDescription != null) {
      return changedDescription(this);
    }
    return orElse();
  }
}

abstract class _ChangedDescription implements CommentFormEvent {
  const factory _ChangedDescription({String? description}) =
      _$_ChangedDescription;

  String? get description;
  @JsonKey(ignore: true)
  _$ChangedDescriptionCopyWith<_ChangedDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommentFormStateTearOff {
  const _$CommentFormStateTearOff();

  _CommentFormState call(
      {required bool isLoading,
      required Either<InvalidInputFailure, String> description,
      required bool showErrors,
      Either<Failure, Unit>? failureOrSuccess}) {
    return _CommentFormState(
      isLoading: isLoading,
      description: description,
      showErrors: showErrors,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $CommentFormState = _$CommentFormStateTearOff();

/// @nodoc
mixin _$CommentFormState {
  bool get isLoading => throw _privateConstructorUsedError;
  Either<InvalidInputFailure, String> get description =>
      throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  Either<Failure, Unit>? get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentFormStateCopyWith<CommentFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentFormStateCopyWith<$Res> {
  factory $CommentFormStateCopyWith(
          CommentFormState value, $Res Function(CommentFormState) then) =
      _$CommentFormStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Either<InvalidInputFailure, String> description,
      bool showErrors,
      Either<Failure, Unit>? failureOrSuccess});
}

/// @nodoc
class _$CommentFormStateCopyWithImpl<$Res>
    implements $CommentFormStateCopyWith<$Res> {
  _$CommentFormStateCopyWithImpl(this._value, this._then);

  final CommentFormState _value;
  // ignore: unused_field
  final $Res Function(CommentFormState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? description = freezed,
    Object? showErrors = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
abstract class _$CommentFormStateCopyWith<$Res>
    implements $CommentFormStateCopyWith<$Res> {
  factory _$CommentFormStateCopyWith(
          _CommentFormState value, $Res Function(_CommentFormState) then) =
      __$CommentFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Either<InvalidInputFailure, String> description,
      bool showErrors,
      Either<Failure, Unit>? failureOrSuccess});
}

/// @nodoc
class __$CommentFormStateCopyWithImpl<$Res>
    extends _$CommentFormStateCopyWithImpl<$Res>
    implements _$CommentFormStateCopyWith<$Res> {
  __$CommentFormStateCopyWithImpl(
      _CommentFormState _value, $Res Function(_CommentFormState) _then)
      : super(_value, (v) => _then(v as _CommentFormState));

  @override
  _CommentFormState get _value => super._value as _CommentFormState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? description = freezed,
    Object? showErrors = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_CommentFormState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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

class _$_CommentFormState implements _CommentFormState {
  const _$_CommentFormState(
      {required this.isLoading,
      required this.description,
      required this.showErrors,
      this.failureOrSuccess});

  @override
  final bool isLoading;
  @override
  final Either<InvalidInputFailure, String> description;
  @override
  final bool showErrors;
  @override
  final Either<Failure, Unit>? failureOrSuccess;

  @override
  String toString() {
    return 'CommentFormState(isLoading: $isLoading, description: $description, showErrors: $showErrors, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommentFormState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$CommentFormStateCopyWith<_CommentFormState> get copyWith =>
      __$CommentFormStateCopyWithImpl<_CommentFormState>(this, _$identity);
}

abstract class _CommentFormState implements CommentFormState {
  const factory _CommentFormState(
      {required bool isLoading,
      required Either<InvalidInputFailure, String> description,
      required bool showErrors,
      Either<Failure, Unit>? failureOrSuccess}) = _$_CommentFormState;

  @override
  bool get isLoading;
  @override
  Either<InvalidInputFailure, String> get description;
  @override
  bool get showErrors;
  @override
  Either<Failure, Unit>? get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$CommentFormStateCopyWith<_CommentFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
