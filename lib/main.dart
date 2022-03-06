import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_demo/bindings/main_binding.dart';
import 'package:getx_demo/pages/cart_get_widget_page.dart';
import 'package:getx_demo/pages/cart_page.dart';
import 'package:getx_demo/pages/dependency_page.dart';
import 'package:getx_demo/pages/login_page.dart';
import 'package:getx_demo/pages/navigation_page.dart';
import 'package:getx_demo/pages/profile_page.dart';
import 'package:getx_demo/pages/shop_page.dart';
import 'package:getx_demo/pages/subjects_page.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      smartManagement: SmartManagement.full, // full | keepFactory | onlyBuilder
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: SubjectsPage(),
      initialRoute: "/home",
      defaultTransition: Transition.rightToLeft,
      getPages: [
        GetPage(name: "/home", page: () => SubjectsPage(), binding: MainBinding()),
        GetPage(name: "/shop/:shopID", page: () => ShopPage()),
        GetPage(name: "/cart/:cartID", page: () => CartPage()),
        GetPage(name: "/nav", page: () => NavigationPage()),
        GetPage(name: "/profile", page: () => Profile()),
        GetPage(name: "/dependency", page: () => DependencyPage()),
        GetPage(name: "/cart-get-widget", page: () => CartGetWidgetPage()),
        GetPage(name: "/login", page: () => LoginPage()),
      ],
    );
  }
}