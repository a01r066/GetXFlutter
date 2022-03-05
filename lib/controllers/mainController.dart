import 'package:get/get.dart';

class MainController extends GetxController {
  // bool isLoggedIn = false;
  var isLoggedIn = false.obs;
  var followers = 0.obs;

  // GetX method
  updateStatus(bool newStatus){
    isLoggedIn.value = newStatus;
  }

  // GetBuilder method
  // updateStatus(bool status){
  //   isLoggedIn = status;
  //   // update();
  //   update(['login_status_widget', 'followers_widget']);
  // }
}