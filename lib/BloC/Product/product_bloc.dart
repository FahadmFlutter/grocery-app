import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:nectar/Model_Classes/ProductModel.dart';
import 'package:nectar/Repository/Product_Api.dart';
import 'package:nectar/UI/Home.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductApi productApi = ProductApi();
  late ProductModel productModel;

  ProductBloc() : super(ProductInitial()) {
    on<FetchProduct>((event, emit) async {
      emit(ProductBlocLoading());
      try {
        productModel = await productApi.getProduct(event.id);
        emit(ProductBlocLoaded());
      } catch (e) {
        if (kDebugMode) {
          print(e);
        }
        emit(ProductBlocError());
      }
    });
  }
}
