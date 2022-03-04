import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Get.back();
              },
              child: Column(
                children: [
                  // Text("Back of ${Get.arguments}"),
                  Text("Back of: ${Get.parameters["shopID"]}")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
