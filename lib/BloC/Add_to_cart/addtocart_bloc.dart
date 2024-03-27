import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nectar/Repository/AddtoCart_Api.dart';

import '../../Model_Classes/AddtoCartModel.dart';

part 'addtocart_event.dart';
part 'addtocart_state.dart';

class AddtocartBloc extends Bloc<AddtocartEvent, AddtocartState> {
  AddtocartApi addtocartApi = AddtocartApi();
  late AddtoCartModel addtoCartModel;
  AddtocartBloc() : super(AddtocartInitial()) {
    on<FetchAddtoCart>((event, emit) async{
      emit(AddtocartBlocLoading());
      try{
        addtoCartModel =await addtocartApi.getAddtoCart(product_id: event.product_id, quantity: event.quantity);
        emit(AddtocartBlocLoaded());
      }catch(e){
        print(e);
        emit(AddtocartBlocError());
      }
    });
  }
}
