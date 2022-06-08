import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginsigi/Screens/signupscreen.dart';
import 'package:loginsigi/controller/login_controller.dart';


class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  LoginController loginController=Get.put(LoginController());

  @override
  Widget build(BuildContext context) {

    double  padding= 20.0;
    return Scaffold(
      appBar: AppBar(
        title: const Text("LogIn"),
        centerTitle: true,
      ),

      body: Padding(
        padding:  EdgeInsets.all(padding),
        child: Column(
          children: [
            const Text("LogInPage"),

            TextFormField(
              controller:loginController. phoneController,
              decoration: const InputDecoration(
                  hintText: "name"
              ),
            ),

            /* TextFormField(
              decoration: InputDecoration(
                  hintText: "device tokan"
              ),
            ),
*/
            TextButton(onPressed: (){
              loginController.login();
            }, child: const Text("LogIn")),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
            }, child: const Text("Sign Up"))
          ],
        ),
      ),

    );
  }
}


