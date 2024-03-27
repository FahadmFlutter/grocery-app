import 'dart:convert';

import 'package:nectar/Model_Classes/AddtoCartModel.dart';
import 'package:http/http.dart';
import 'api_client.dart';

class AddtocartApi{
  ApiClient apiClient =ApiClient();
  Future<AddtoCartModel>getAddtoCart({required String product_id,required int quantity, })async{
    String path ='http://62.72.12.251:9876/api/cart/add-to-cart';
    var body ={
      "product_id": product_id,
      "quantity": quantity,
    };
    Response response = await apiClient.invokeAPI(path, 'POST', jsonEncode(body));
    return AddtoCartModel.fromJson(jsonDecode(response.body));
  }
}