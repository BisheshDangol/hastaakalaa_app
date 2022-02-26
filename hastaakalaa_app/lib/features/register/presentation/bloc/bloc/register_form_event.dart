part of 'register_form_bloc.dart';

@freezed
class RegisterFormEvent with _$RegisterFormEvent {
  const factory RegisterFormEvent.pressedCreate() = _PressedCreate;
  const factory RegisterFormEvent.changedEmail({String? email}) = _ChangedEmail;
  const factory RegisterFormEvent.changedPassword({String? password}) =
      _ChangedPassword;
  const factory RegisterFormEvent.changedUserName({String? userName}) =
      _ChangedUserName;
  const factory RegisterFormEvent.changedFirstName({String? firstName}) =
      _ChangedFirstName;
  const factory RegisterFormEvent.changedLastName({String? lastName}) =
      _ChangedLastName;
  const factory RegisterFormEvent.changedAddress({String? address}) =
      _ChangedAddress;
  const factory RegisterFormEvent.changedPhoneNumber({String? phoneNumber}) =
      _ChangedPhoneNumber;
  const factory RegisterFormEvent.changedUserType({String? userType}) =
      _ChangedUserType;
}
