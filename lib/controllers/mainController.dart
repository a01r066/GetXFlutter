import 'package:get/get.dart';

class MainController extends GetxController {
  // bool isLoggedIn = false;
  var isLoggedIn = false.obs;
  var followers = 50.obs;

  // GetX Workers
  @override
  void onInit() {
    // ever(isLoggedIn, (_){
    //   print("Ever worker: called everytime when a value of a variable changes");
    // },);

    // everAll([isLoggedIn, followers], (_){
    //   print("EverAll worker: called everytime when value of variable in the list changes");
    // });

    // once(isLoggedIn, (_){
    //   print("Once worker: function called only once when the value changes");
    // });

    debounce(isLoggedIn, (_){
      print("Debounce worker: function is called everytime user stops typing for the specific duration."
          "\nGenerally used in search functionality as we don't want fetch the api every key stroke.");
    }, time: Duration(seconds: 1));

    super.onInit();
  }

  // GetX method
  updateStatus(bool newStatus) {
    isLoggedIn.value = newStatus;
  }

// GetBuilder method
// updateStatus(bool status){
//   isLoggedIn = status;
//   // update();
//   update(['login_status_widget', 'followers_widget']);
// }
}