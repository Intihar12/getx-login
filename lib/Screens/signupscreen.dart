//import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:loginsigi/controller/signup_controller.dart';

class SignUpPage extends StatelessWidget {


  SignUpController signUpController=Get.put(SignUpController());
  @override
  Widget build(BuildContext context) {
    double padding=20;
    return Scaffold(
      appBar: AppBar(title: const Text("SignUp"),
      centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.all(padding),
        child: Column(children: [
          TextFormField(
            controller:signUpController.phoneController,
            decoration: const InputDecoration(
              hintText: "phone"
            ),
          ),
          TextFormField(
            controller: signUpController.fNameController,
            decoration: const InputDecoration(
                hintText: "first_name"
            ),
          ),
          TextFormField(
            controller: signUpController.lNameController,
            decoration: const InputDecoration(
                hintText: "last_name"
            ),
          ),
          TextFormField(
            controller: signUpController.emailController,
            decoration: const InputDecoration(
                hintText: "email"
            ),
          ),

          TextButton(onPressed: (){
            signUpController.signup();
          }, child:const Text("SignUp"))
        ],),
      ),
    );
  }
}
