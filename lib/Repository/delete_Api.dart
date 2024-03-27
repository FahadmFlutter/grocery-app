import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:nectar/Model_Classes/DeleteModel.dart';

import 'api_client.dart';

class DeleteApi {
  ApiClient apiClient = ApiClient();

  Future<DeleteModel> deleteCart({required String cartId}) async {
    String path = 'http://62.72.12.251:9876/api/cart/delete/$cartId';
    if (kDebugMode) {
      print(cartId);
    }
    var body = {
      "cartId": cartId,
    };
    Response response =
    await apiClient.invokeAPI(path, 'DELETE', jsonEncode(body));
    return DeleteModel.fromJson(jsonDecode(response.body));
  }
}
