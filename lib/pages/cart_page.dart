import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(onPressed: (){
              Get.back(result: "Get.off data returned!");
            }, child: Column(
              children: [
                // Text("Back of ${Get.arguments}"),
                Text("Back of: ${Get.parameters["cartID"]}")
              ],
            )),
          ],
        ),
      ),
    );
  }
}
