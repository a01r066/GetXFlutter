import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            RaisedButton(onPressed: () async {
              // var data = await Get.off(() => CartPage(), arguments: "Get.off");
              var data = await Get.offNamed("/cart/cartId123");
              print("Data returned: $data");
            }, child: Column(
              children: [
                Text("Get.offNamed to remove only 1 previous screen!"),
              ],
            ),),
            RaisedButton(onPressed: () {
              // Get.offAll(() => ShopPage(), arguments: "Get.offAll");
              Get.offAllNamed("/shop/shopId123");
            }, child: Text("Get.offAllNamed remove all previous screens!"),),
            RaisedButton(onPressed: () => Get.back(), child: Text("Back"),),
          ],
        ),
      ),
    );
  }
}
