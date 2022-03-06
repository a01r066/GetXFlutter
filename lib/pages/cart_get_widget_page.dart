import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:getx_demo/controllers/mainController.dart';

// GetWidget - a stateless widget has a controller getter.
// If we have a single controller as a dependency, we can use GetWidget instead of Stateless Widget and
// avoid writing Get.find(). But we have to initialize in binding or anywhere
class CartGetWidgetPage extends GetWidget<MainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("Followers: ${controller.followers}")),
      ),
    );
  }
}
