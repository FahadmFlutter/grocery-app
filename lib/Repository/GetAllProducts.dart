import 'dart:convert';

import 'package:http/http.dart';
import 'package:nectar/Repository/api_client.dart';
import '../Model_Classes/GetAllProductsModel.dart';

class GetAllProductsApi {
  ApiClient apiClient = ApiClient();

  Future<GetAllProductsModel> getGetAllProducts() async {
    String path = 'http://62.72.12.251:9876/api/product/all?page=1&limit=10';
    var body = {};
    Response response =
        await apiClient.invokeAPI(path, 'GET', jsonEncode(body));
    return GetAllProductsModel.fromJson(jsonDecode(response.body));
  }
}
