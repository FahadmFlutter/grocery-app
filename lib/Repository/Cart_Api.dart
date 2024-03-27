import 'dart:convert';

import 'package:nectar/Model_Classes/CartModel.dart';
import 'package:http/http.dart';
import 'api_client.dart';

class CartApi {
  ApiClient apiClient = ApiClient();

  Future<CartModel> getCart() async {
    String path = 'http://62.72.12.251:9876/api/cart/get';
    var body = {};
    Response response =
        await apiClient.invokeAPI(path, 'GET', jsonEncode(body));
    return CartModel.fromJson(jsonDecode(response.body));
  }
}
