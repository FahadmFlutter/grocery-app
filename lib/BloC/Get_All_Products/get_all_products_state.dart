part of 'get_all_products_bloc.dart';

@immutable
abstract class GetAllProductsState {}

class GetAllProductsInitial extends GetAllProductsState {}

class GetAllProductsLoading extends GetAllProductsState {}
class GetAllProductsLoaded extends GetAllProductsState {}
class GetAllProductsError extends GetAllProductsState {}