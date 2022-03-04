import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Text("Action"),
                  ),
                ),
              ),
            );
          },
          child: Text("Show Snackbar"),
        ),
      ),
    );
  }
}
