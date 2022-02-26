part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.pressedSend() = _PressedSend;
  const factory LoginEvent.changedUsername({String? username}) =
      _ChangedUsername;
  const factory LoginEvent.changedPassword({String? password}) =
      _ChangedPassword;
}
