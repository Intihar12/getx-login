import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:loginsigi/Screens/loginscreens.dart';

void main(){
  runApp( GetMaterialApp(
    getPages: [
      GetPage <void>(name: "/",
          page:()=> Login(),

      )
    ],

    theme: ThemeData(fontFamily: 'Product Sans Regular'),
    debugShowCheckedModeBanner: false,));
}



