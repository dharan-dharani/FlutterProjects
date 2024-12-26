import 'package:flutter/material.dart';
import 'package:todo_application/ToDoItems.dart';
import 'package:todo_application/Todo.dart';

void main() => runApp(new MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _todoState createState() => _todoState();
}

class _todoState extends State<MyApp> {
  final todolists = ToDo.todolist();
  final todocontroller = TextEditingController();
  int i = 0;

  void checkboxx(ToDo todo) {
    setState(() {
      todo.istext = !todo.istext;
    });
  }

  void idDelete(String ids) {
    setState(() {
      todolists.removeWhere((item) => item.id == ids);
    });
  }

  void todoadd(String toDo) {
    setState(() {
      todolists.add(ToDo(id: (i + 1).toString(), todotext: toDo));

      print(i++);
    });
    todocontroller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.white,
        ),
        title: Text(
          'ToDo App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Stack(
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'All ToDo Lists',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    for (ToDo todoo in todolists)
                      ToDoItems(
                        todo: todoo,
                        onchanged: checkboxx,
                        deleted: idDelete,
                      ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        controller: todocontroller,
                        decoration: InputDecoration(
                            labelText: 'Add a ToDo List',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                        onPressed: () {
                          todoadd(todocontroller.text);
                        },
                        child: Text('Add')),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
