part of 'delete_bloc.dart';

@immutable
sealed class DeleteEvent {}
class FetchDelete extends DeleteEvent {
  final String cartId;
  FetchDelete({
    required this.cartId
  });
}
