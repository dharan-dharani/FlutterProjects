import 'package:flutter/material.dart';
import 'package:todo_application/Todo.dart';

class ToDoItems extends StatelessWidget {
  final ToDo todo;
  final onchanged;
  final deleted;
  ToDoItems(
      {super.key,
      required this.todo,
      required this.onchanged,
      required this.deleted});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        onTap: () {
          onchanged(todo);
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        leading: todo.istext
            ? Icon(Icons.check_box)
            : Icon(Icons.check_box_outline_blank),
        tileColor: Colors.white,
        title: Text(
          todo.todotext!,
          style: TextStyle(
              decoration: todo.istext ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          height: 38,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.red,
          ),
          child: Center(
            child: IconButton(
                color: Colors.white,
                onPressed: () {
                  deleted(todo.id);
                },
                icon: Icon(
                  Icons.delete,
                )),
          ),
        ),
      ),
    );
  }
}
