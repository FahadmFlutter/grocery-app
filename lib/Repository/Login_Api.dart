import 'dart:convert';

import 'package:http/http.dart';
import 'package:nectar/Model_Classes/LogInModel.dart';
import 'package:nectar/Repository/api_client.dart';

class LoginApi{
  ApiClient apiClient =ApiClient();
  Future<LogInModel>getLogIn({required String email,required String passWord, })async{
    String path ='http://62.72.12.251:9876/api/auth/local/sign-in';
    var body ={
      "email": email,
      "password": passWord,
    };
    Response response = await apiClient.invokeAPI(path, 'POST', jsonEncode(body));
    return LogInModel.fromJson(jsonDecode(response.body));
  }
}