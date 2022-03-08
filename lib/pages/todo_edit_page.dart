import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/todo_controller.dart';
import 'package:getx_demo/models/todo.dart';

class TodoEditPage extends StatelessWidget {
  TextEditingController todoTextEditingController = TextEditingController();
  final todoController = Get.find<TodoController>();
  final int selectedIndex;

  TodoEditPage({ required this.selectedIndex });

  @override
  Widget build(BuildContext context) {
    todoTextEditingController.text = todoController.todos[selectedIndex].title;
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
              child: Text("Back"),
            ),
            SizedBox(width: 16.0,),
            RaisedButton(
              onPressed: () {
                // todoController.todos.add(Todo(title: todoTextEditingController.text, status: false));
                var todo = Todo(title: todoTextEditingController.text, status: todoController.todos[selectedIndex].status);
                todoController.todos[selectedIndex] = todo;
                Get.back();
              },
              color: Colors.blue,
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
