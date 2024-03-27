part of 'addtocart_bloc.dart';

@immutable
abstract class AddtocartEvent {}
class FetchAddtoCart extends AddtocartEvent {
  final String product_id;
  final int quantity;

  FetchAddtoCart(
      {
        required this.product_id,
        required this.quantity,
      }
      );
}
