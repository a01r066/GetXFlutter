import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_demo/models/todo.dart';

class TodoController extends GetxController {
  var todos = <Todo>[].obs;

  @override
  void onInit() {
    // read todos
    final todosStorage = GetStorage().read<List>("todos");
    if(todosStorage != null){
      todos = todosStorage.map((e) => Todo.fromJson(e)).toList().obs;
    }

    // write todos
    ever(todos, (_){
      GetStorage().write("todos", todos.toList());
    });
    super.onInit();
  }
}