import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/pages/cart_page.dart';
import 'package:getx_demo/pages/navigation_page.dart';
import 'package:getx_demo/pages/shop_page.dart';
import 'package:getx_demo/pages/subjects_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: SubjectsPage(),
      initialRoute: "/home",
      defaultTransition: Transition.leftToRight,
      getPages: [
        GetPage(name: "/home", page: () => SubjectsPage()),
        GetPage(name: "/shop/:shopID", page: () => ShopPage()),
        GetPage(name: "/cart/:cartID", page: () => CartPage()),
        GetPage(name: "/nav", page: () => NavigationPage()),
      ],
    );
  }
}