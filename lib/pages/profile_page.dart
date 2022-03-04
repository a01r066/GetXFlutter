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
                final status = !mainController.isLoggedIn;
                mainController.updateStatus(status);
              },
              child: Text("Change login status"),
            ),
            GetBuilder<MainController>(
              builder: (_) {
                return Text("isLoggedIn: ${mainController.isLoggedIn}");
              },
            ),
          ],
        ),
      ),
    );
  }
}
