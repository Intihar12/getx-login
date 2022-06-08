

import 'package:get/get.dart';
import 'package:loginsigi/modals/modal.dart';

class Api extends GetConnect{



  Future<Welcome> login({required String phone}) async {
    var response =await httpClient.post("https://bolt.devglocal.com/api/user/login",
        headers: {"Accept":"application/json"},
        body: {
      "phone":phone,
      "device_token":"aaaaaa",
    });
    if(response.hasError){
      return Future.error(response.statusText!);
    }
    else{
      Welcome modal =Welcome.fromJson(response.body);
      return modal;
    }

  }
}
