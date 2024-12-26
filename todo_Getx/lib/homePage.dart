import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_web/GetController.dart';

class homePage extends StatelessWidget {
  final Getcontrol todoController = Get.put(Getcontrol());
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text(
          'Todo App',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: textController,
              decoration: InputDecoration(
                labelText: 'Add a Todo',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (value) {
                todoController.addTasks(value);
                textController.clear();
              },
            ),
            SizedBox(height: 20),
            Expanded(
              child: Obx(() {
                return ListView.builder(
                  itemCount: todoController.todos.length,
                  itemBuilder: (context, index) {
                    var todo = todoController.todos[index];
                    return ListTile(
                      title: Text(
                        todo.title,
                        style: TextStyle(
                          decoration: todo.isDone
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                      ),
                      leading: Checkbox(
                        value: todo.isDone,
                        onChanged: (value) {
                          todoController.taskComplete(index);
                        },
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          todoController.removeTask(index);
                        },
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
