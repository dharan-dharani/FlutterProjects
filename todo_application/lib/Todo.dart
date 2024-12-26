class ToDo {
  String? id;
  String? todotext;
  bool istext;

  ToDo({required this.id, required this.todotext, this.istext = false});

  static List<ToDo> todolist() {
    return [];
  }
}
