

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:loginsigi/api/signupApi.dart';

class SignUpController extends GetxController{

  TextEditingController phoneController=TextEditingController();
  TextEditingController fNameController=TextEditingController();
  TextEditingController lNameController=TextEditingController();
  TextEditingController emailController=TextEditingController();


  signup(){

    signUpApi().signUp(phone:phoneController.text,fname:fNameController.text,
        lname:lNameController.text, email:emailController.text).then((value) {
          if(value.status==true){
            Get.snackbar("SignUp", "Sign Up Successful");
          }else{
            Get.snackbar("SignUp", "SignUp Not Successful");
          }
    },onError: (error){
          Get.snackbar("error","${error.toString()}" );
    });

  }
}