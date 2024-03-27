import 'dart:convert';

import 'package:http/http.dart';
import 'package:nectar/Model_Classes/ProductModel.dart';
import 'package:nectar/Repository/api_client.dart';

class ProductApi{
  ApiClient apiClient =ApiClient();

  Future<ProductModel>getProduct(String id) async{
    String path ='http://62.72.12.251:9876/api/product/$id';
    print(id);
    var body ={

    };
    Response response = await apiClient.invokeAPI(path, 'GET', jsonEncode(body));
    return ProductModel.fromJson(jsonDecode(response.body));

  }
}