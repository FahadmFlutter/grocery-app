import 'dart:convert';

import 'package:http/http.dart';
import 'package:nectar/Model_Classes/SignUpModel.dart';

import 'api_client.dart';


class SignUpApi{
  ApiClient apiClient=ApiClient();


  Future<SignUpModel>getSignUp({required String userName,required String email,required String passWord,required String phone,}) async{
    String path ='http://62.72.12.251:9876/api/auth/local/sign-up';
    var body ={
      "Username": userName,
      "Email": email,
      "Password": passWord,
      "phone": phone
    };
    Response response = await apiClient.invokeAPI(path, 'POST', jsonEncode(body));
    return SignUpModel.fromJson(jsonDecode(response.body));

  }
}