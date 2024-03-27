import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nectar/Repository/GetAllProducts.dart';

import '../../Model_Classes/GetAllProductsModel.dart';

part 'get_all_products_event.dart';

part 'get_all_products_state.dart';

class GetAllProductsBloc
    extends Bloc<GetAllProductsEvent, GetAllProductsState> {
  GetAllProductsApi getAllProductsApi = GetAllProductsApi();
  late GetAllProductsModel getAllProductsModel;

  GetAllProductsBloc() : super(GetAllProductsInitial()) {
    on<FetchGetAllProducts>((event, emit) async {
      emit(GetAllProductsLoading());
      try {
        getAllProductsModel = await getAllProductsApi.getGetAllProducts();
        emit(GetAllProductsLoaded());
      } catch (e) {
        print(e);
        emit(GetAllProductsError());
      }
    });
  }
}
