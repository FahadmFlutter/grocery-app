part of 'delete_bloc.dart';

@immutable
sealed class DeleteState {}

final class DeleteInitial extends DeleteState {}
final class DeleteBlocLoaded extends DeleteState {}
final class DeleteBlocLoading extends DeleteState {}
final class DeleteBlocError extends DeleteState {}