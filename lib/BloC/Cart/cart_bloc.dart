import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nectar/Repository/Cart_Api.dart';

import '../../Model_Classes/CartModel.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartApi cartApi = CartApi();
  late CartModel cartModel;
  CartBloc() : super(CartInitial()) {
    on<FetchCart>((event, emit) async {
      emit(CartBlocLoading());
      try {
        cartModel = await cartApi.getCart();
        emit(CartBlocLoaded());
      } catch (e) {
        print(e);
        emit(CartBlocError());
      }
    });
  }
}
