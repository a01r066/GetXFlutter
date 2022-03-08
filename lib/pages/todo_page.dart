import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/todo_controller.dart';
import 'package:getx_demo/pages/todo_edit_page.dart';

class TodoPage extends StatefulWidget {
  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final todoController = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
        // actions: [
        //   Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 16.0),
        //     child: GestureDetector(
        //       onTap: (){
        //         Get.toNamed("/todo_detail");
        //       },
        //         child: Icon(Icons.add)),
        //   )
        // ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed("/todo_detail");
        },
        child: Icon(Icons.add),
      ),
      body: Obx(() {
        return ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  todoController.todos[index].title,
                  style: todoController.todos[index].status == true
                      ? TextStyle(
                          color: Colors.red,
                          decoration: TextDecoration.lineThrough)
                      : TextStyle(color: Colors.black),
                ),
                onTap: () {},
                trailing:
                    GestureDetector(onTap: () {
                      Get.to(TodoEditPage(selectedIndex: index));
                    }, child: Icon(Icons.edit)),
                leading: Checkbox(
                  value: todoController.todos[index].status,
                  onChanged: (newStatus) {
                    var todo = todoController.todos[index];
                    todo.status = newStatus ?? false;
                    todoController.todos[index] = todo;
                  },
                ),
              );
            },
            separatorBuilder: (context, pos) => Divider(),
            itemCount: todoController.todos.length);
      }),
    );
  }
}
