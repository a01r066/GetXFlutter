import 'package:get/get.dart';

class MainController extends GetxController {
  bool isLoggedIn = false;
  int followers = 0;

  updateStatus(bool status){
    isLoggedIn = status;
    // update();
    update(['login_status_widget', 'followers_widget']);
  }
}