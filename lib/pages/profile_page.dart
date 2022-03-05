import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:getx_demo/controllers/mainController.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  final mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                final status = !mainController.isLoggedIn.value;
                mainController.updateStatus(status);
              },
              child: Text("Change login status"),
            ),
            // GetBuilder Method
            // GetBuilder<MainController>(
            //   id: "login_status_widget",
            //   builder: (_) {
            //     print("Login status widget rebuild");
            //     return Text("isLoggedIn: ${mainController.isLoggedIn}");
            //   },
            // ),
            // GetBuilder<MainController>(
            //   id: "followers_widget",
            //   builder: (_) {
            //     print("Followers widget rebuild");
            //     return Text("Followers: ${mainController.followers}");
            //   },
            // ),

            // GetX Method
            GetX<MainController>(
              builder: (_) {
                print("Login status widget rebuild");
                return Text("isLoggedIn: ${mainController.isLoggedIn}");
              },
            ),
            GetX<MainController>(
              builder: (_) {
                print("Followers widget rebuild");
                return Text("Followers: ${mainController.followers}");
              },
            ),
          ],
        ),
      ),
    );
  }
}
