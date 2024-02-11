part of 'auth_bloc.dart';

abstract class AuthEvent {}

class LoginEvent extends AuthEvent {
  final String email;
  final String password;
  LoginEvent({
    required this.email,
    required this.password,
  });
}

class RegisterEvent extends AuthEvent {
  final String phoneNumber;
  final String email;
  final String password;
  RegisterEvent({
    required this.phoneNumber,
    required this.email,
    required this.password,
  });
}

class ResetEvent extends AuthEvent {
  final String email;
  ResetEvent({
    required this.email,
  });
}
