import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/todo_controller.dart';
import 'package:getx_demo/models/todo.dart';

class TodoDetailPage extends StatelessWidget {
  TextEditingController todoTextEditingController = TextEditingController();
  final todoController = Get.find<TodoController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: TextField(
            controller: todoTextEditingController,
            decoration: InputDecoration(
              hintText: "Todo content...",
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
            autofocus: true,
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500, color: Colors.deepPurple[700]),
            keyboardType: TextInputType.multiline,
            maxLines: 10,
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Get.back();
              },
              color: Colors.red,
              child: Text("Cancel"),
            ),
            SizedBox(width: 16.0,),
            RaisedButton(
              onPressed: () {
                // print("Add");
                todoController.todos.add(Todo(title: todoTextEditingController.text, status: false));
                Get.back();
              },
              color: Colors.blue,
              child: Text("Add"),
            ),
          ],
        ),
      ),
    );
  }
}
