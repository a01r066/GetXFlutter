import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/pages/cart_page.dart';

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Navigation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(onPressed: (){
              Get.off(() => CartPage(), arguments: "Get.off");
            }, child: Text("Get.off to remove only 1 previous screen!"),),
            RaisedButton(onPressed: (){
              Get.offAll(() => CartPage(), arguments: "Get.offAll");
            }, child: Text("Get.offAll remove all previous screens!"),),
            RaisedButton(onPressed: () => Get.back(), child: Text("Back"),),
          ],
        ),
      ),
    );
  }
}
