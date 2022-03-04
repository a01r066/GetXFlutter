import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/widgets/grid_item_widget.dart';

class SubjectsPage extends StatelessWidget {
  final snackbar = GridItemWidget(subject: "Snackbar");
  final dialog = GridItemWidget(
    subject: "Dialog",
  );

  // List<Map<GridItemWidget, Widget>> mapItems = [];

  @override
  Widget build(BuildContext context) {
    // for (Map<GridItemWidget, Widget> mapItem in mapItems) {
    //   for (var item in mapItem.entries) {
    //     item.key.tapAction = () {
    //       Navigator.push(
    //           context, MaterialPageRoute(builder: (context) => item.value));
    //     };
    //   }
    // }

    // Snackbar
    snackbar.tapAction = () {
      showSnackbar();
    };

    // Dialog
    dialog.tapAction = () {
      showDialog();
    };

    return Scaffold(
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
            snackbar,
            dialog,
          ],
        ),
      ),
    );
  }

  showDialog() {
    Get.defaultDialog(
      title: "Are you sure?",
      content: Text("You're going to delete account!", style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.redAccent,
      textCancel: "Back",
      textConfirm: "OK",
      onCancel: (){print("Back");},
      onConfirm: (){print("OK");},
      cancelTextColor: Colors.white,
      confirmTextColor: Colors.yellow,
      barrierDismissible: true,
    );
  }

  showSnackbar() {
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
      backgroundColor: Colors.deepPurple[700],
      mainButton: TextButton(
        onPressed: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: Colors.white, width: 1.0),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text("Action"),
          ),
        ),
      ),
    );
  }
}
