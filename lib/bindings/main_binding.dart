import 'package:get/get.dart';
import 'package:getx_demo/controllers/mainController.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Get.put<MainController>(MainController());

    // lazyPut - The dependencies will be created immediately,
    // but it will be loaded to memory only when Get.find() is called for the first time.
    // Normally, Get.lazyPut loads dependencies only one time,
    // which means that if the route gets removed, and created again, Get.lazyPut will not load them again
    // fenix: true - still delete the dependencies, but it will be able to re-initialize them, when the route is back in stack
    Get.lazyPut(() => MainController(), fenix: true);
  }
}