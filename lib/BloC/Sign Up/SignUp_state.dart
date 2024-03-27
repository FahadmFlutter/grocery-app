part of 'SignUp_bloc.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}
class SignUpBlocLoading extends SignUpState {}
class SignUpBlocLoaded extends SignUpState {}
class SignUpBlocError extends SignUpState {}
