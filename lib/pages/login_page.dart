import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_demo/controllers/mainController.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  final storage = GetStorage();
  final mainController = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login Panel"),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email address"
                ),
              ),
              SizedBox(height: 16.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(onPressed: (){
                    if(GetUtils.isEmail(emailController.text)){
                      storage.write("email", emailController.text);
                      emailController.text = "";
                    } else {
                      Get.snackbar("Invalid email address", "Please enter an email!");
                    }
                  },
                  child: Text("Save Data"),
                  ),
                  RaisedButton(onPressed: (){
                    final email = storage.read("email");
                    mainController.updateEmail(email);
                    emailController.text = email;
                  }, child: Text("Read Data"),),
                ],
              ),
              SizedBox(height: 16.0,),
              Obx(() {
                return Text("isLoggedIn: ${mainController.email}");
              }),
            ],
          ),
        ),
      ),
    );
  }
}
