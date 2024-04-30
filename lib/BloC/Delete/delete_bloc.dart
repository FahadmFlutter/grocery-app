import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:nectar/Repository/delete_Api.dart';

import '../../Model_Classes/DeleteModel.dart';

part 'delete_event.dart';
part 'delete_state.dart';

class DeleteBloc extends Bloc<DeleteEvent, DeleteState> {
  DeleteApi deleteApi =DeleteApi();
  late DeleteModel deleteModel;
  DeleteBloc() : super(DeleteInitial()) {
    on<FetchDelete>((event, emit)async {
      emit(DeleteBlocLoading());
      try {
        deleteModel = await deleteApi.deleteCart(cartId: event.cartId);
        emit(DeleteBlocLoaded());
      } catch (e) {
        if (kDebugMode) {
          print(e);
        }
        emit(DeleteBlocError());
      }
    });
  }
}
