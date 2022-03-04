import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/pages/navigation_page.dart';
import 'package:getx_demo/widgets/grid_item_widget.dart';

class SubjectsPage extends StatelessWidget {
  final snackBar = GridItemWidget(subject: "Snackbar");
  final dialog = GridItemWidget(subject: "Dialog");
  final bottomSheet = GridItemWidget(subject: "BottomSheet");
  final navigation = GridItemWidget(subject: "Navigation");
  final namedRoutes = GridItemWidget(subject: "Navigation with Named Routes");
  final getBuilderMethod = GridItemWidget(subject: "GetBuilder Method");

  // List<Map<GridItemWidget, Widget>> mapItems = [];
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // Snackbar
    snackBar.tapAction = () {
      // Flutter snackBar vs GetX snackBar
      // showFlutterSnackbar();
      showGetxSnackbar();
    };

    // Flutter Dialog vs GetX Dialog
    dialog.tapAction = () {
      // showFlutterDialog(context);
      showGetXDialog();
    };

    // Flutter BottomSheet vs GetX BottomSheet
    bottomSheet.tapAction = () {
      // showFlutterBottomSheet();
      showGetXBottomSheet();
    };

    // GetX navigation
    navigation.tapAction = () {
      // Flutter Navigation
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => NavigationPage()));

      // GetX Navigation
      Get.to(() => NavigationPage(), fullscreenDialog: false);
    };

    // GetX Named Routes
    namedRoutes.tapAction = (){
      Get.toNamed("/nav");
    };

    // GetX GetBuilder Method
    getBuilderMethod.tapAction = (){
      Get.toNamed("/profile");
    };

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("GetX Subjects"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          children: [
            snackBar,
            dialog,
            bottomSheet,
            navigation,
            namedRoutes,
            getBuilderMethod,
          ],
        ),
      ),
    );
  }

  // Flutter BottomSheet
  showFlutterBottomSheet() {
    scaffoldKey.currentState?.showBottomSheet(
      (context) {
        return Container(
          width: double.infinity,
          height: 320.0,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
          ),
          child: Center(
            child: Text(
              "Bottomsheet",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
  }

  // GetX BottomSheet
  showGetXBottomSheet() {
    Get.bottomSheet(
      SizedBox(
        height: 320.0,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(
                height: 16.0,
              ),
              Text("Loading data ..."),
            ],
          ),
        ),
      ),
      isDismissible: true, // Dismiss bottom sheet when tap outside
      backgroundColor: Colors.greenAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
      ),
    );
  }

  // Flutter Dialog
  showFlutterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text("Flutter dialog!"),
        );
      },
    );
  }

  // GetX Dialog
  showGetXDialog() {
    Get.defaultDialog(
      title: "Are you sure?",
      content: Text(
        "You're going to delete account!",
        style: TextStyle(color: Colors.deepPurple),
      ),
      backgroundColor: Colors.greenAccent,
      textCancel: "Back",
      textConfirm: "OK",
      onCancel: () {
        print("Back");
      },
      onConfirm: () {
        print("OK");
      },
      cancelTextColor: Colors.black,
      confirmTextColor: Colors.yellow,
      barrierDismissible: true,
      buttonColor: Colors.deepPurple,
    );
  }

  // Flutter snackBar
  showFlutterSnackbar() {
    scaffoldKey.currentState?.showSnackBar(
      SnackBar(
        content: Container(
          height: 96.0,
          child: Center(
            child: Text(
              "Action",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  // GetX snackBar
  showGetxSnackbar() {
    Get.snackbar(
      "This is snackbar",
      "GetX Snackbar",
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.all(16.0),
      icon: Icon(
        Icons.check,
        color: Colors.greenAccent,
      ),
      backgroundColor: Colors.greenAccent[700],
      mainButton: TextButton(
        onPressed: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: Colors.white, width: 1.0),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              "Action",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
