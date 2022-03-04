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
              Get.back();
            }, child: Text("Back of ${Get.arguments}")),
            RaisedButton(onPressed: (){
              Get.back();
            }, child: Text("Back of ${Get.arguments}"),),
          ],
        ),
      ),
    );
  }
}
