import 'package:get/get.dart';

class ToDo {
  String title;
  bool isDone;

  ToDo({required this.title, this.isDone = false});
}

class Getcontrol extends GetxController {
  List todos = <ToDo>[].obs;

  void addTasks(String title) {
    todos.add(ToDo(title: title));
  }

  void taskComplete(int index) {
    var todo = todos[index];
    todo.isDone = !todo.isDone;
    todos[index] = todo;
  }

  void removeTask(int index) {
    todos.removeAt(index);
  }
}
