part of 'SignUp_bloc.dart';

@immutable
abstract class SignUpEvent {}

class FetchSignUp extends SignUpEvent {
  final String userName;
  final String email;
  final String passWord;
  final String phone;

  FetchSignUp(
      {required this.userName,
      required this.email,
      required this.passWord,
      required this.phone}
      );
}
