import 'package:get/get.dart';

class MainController extends GetxController {
  bool isLoggedIn = false;

  updateStatus(bool status){
    isLoggedIn = status;
    update();
  }
}