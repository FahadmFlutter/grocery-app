part of 'addtocart_bloc.dart';

@immutable
abstract class AddtocartState {}

class AddtocartInitial extends AddtocartState {}
class AddtocartBlocLoaded extends AddtocartState {}
class AddtocartBlocLoading extends AddtocartState {}
class AddtocartBlocError extends AddtocartState {}