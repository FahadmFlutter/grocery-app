import 'dart:convert';

import 'package:http/http.dart';
import 'package:nectar/Model_Classes/BannerModel.dart';
import 'package:nectar/Repository/api_client.dart';
import '../Model_Classes/GetAllProductsModel.dart';



class BannerApi{
  ApiClient apiClient=ApiClient();


  Future<BannerModel>getBanner() async{
    String path ='http://62.72.12.251:9876/api/banner/all';
    var body ={

    };
    Response response = await apiClient.invokeAPI(path, 'GET', jsonEncode(body));
    return BannerModel.fromJson(jsonDecode(response.body));

  }
}