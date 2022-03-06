import 'package:get/get.dart';
import 'package:getx_demo/controllers/mainController.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<MainController>(MainController());
  }
}