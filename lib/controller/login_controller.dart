

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:loginsigi/api/api.dart';

class LoginController extends GetxController{


  TextEditingController phoneController=TextEditingController();


  login(){
    Api().login(phone: phoneController.text).then((value) {
      if(value.status==true){
        Get.snackbar("Login", "Login Successful");
      }
      else{
        Get.snackbar("Login", "Login Not Successful");
      }
    },onError: (error){
      Get.snackbar("Error", "${error.toString()}");
    });
  }

}