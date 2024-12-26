import 'package:flutter/material.dart';
import 'package:todo/todovariables.dart';

class Ui extends StatefulWidget {
  const Ui({super.key});

  @override
  State<Ui> createState() => _UiState();
}

class _UiState extends State<Ui> {
  final TextEditingController textInput=TextEditingController();
  List<ToDo> todoList=[];
  bool isSelect=false;

  addTheInputText(String text){
    todoList.add(ToDo(text:text));
  }
  removeTheInputText(int index){
    todoList.removeAt(index);
  }
  editTheInputText(int index){
    final TextEditingController update=TextEditingController(text: todoList[index].text);
      showDialog(context: context, builder: (BuildContext context)=>  AlertDialog(
        title:  const Text('Update the Text',style: TextStyle(color: Colors.black),),
      content: TextField(
         controller: update,
      ),
      actions: [
        TextButton(onPressed: (){
          update.clear();
        }, child: const Text('Clear',style: TextStyle(color: Colors.black))),
        TextButton(onPressed: (){
          setState(() {
            todoList[index].text=update.text;
          });
          Navigator.pop(context);
        }, child: const Text('Update',style: TextStyle(color: Colors.black)))
      ],
      )
    );

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: const Text('ToDo Notes',
          style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      body:
          ListView.builder(

              itemCount: todoList.length,
              itemBuilder: (BuildContext context,int index){
                return ListTile(
                  leading:Checkbox(value: todoList[index].isDone, onChanged: (bool? value ){
                    setState(() {
                      todoList[index].isDone=value!;
                    });
                  }) ,
                  title: Text(todoList[index].text,style: TextStyle(decoration:  todoList[index].isDone?  TextDecoration.lineThrough : null),),
                  trailing: SizedBox(
                    width: 100,
                    height: 50,

                    child: Row(
                      children: [
                        IconButton(onPressed: (){
                          setState(() {
                            editTheInputText(index);
                          });
                        }, icon: const Icon(Icons.edit)),
                        const SizedBox(width: 20),
                        IconButton(onPressed: (){
                          setState(() {
                            removeTheInputText(index);
                          });
                        }, icon: const Icon(Icons.delete))
                      ],
                    ),
                  ),
                );

                   }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => StatefulBuilder(
              builder: (context,setState) {
                return AlertDialog(
                  title: const Text(
                    'Add a Text',
                    style: TextStyle(color: Colors.black),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min, // Added to prevent stretching
                    children: [
                      TextField(
                        controller: textInput,
                      ),
                      Center(
                        child: Wrap(
                          spacing: 10,
                          children: [
                            ChoiceChip(
                              label: const Text('Favourite'),
                              selected: isSelect,
                              onSelected: (bool selected) {
                                setState(() {
                                  isSelect = selected;
                                });
                              },
                              selectedColor: Colors.blue.shade100,
                              avatar: isSelect ? const Icon(Icons.check) : null,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        textInput.clear();
                        setState(() {
                          isSelect = false; // Reset isSelect here
                        });
                      },
                      child: const Text(
                        'Reset',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          addTheInputText(textInput.text);
                          Navigator.pop(context);
                          textInput.clear();
                          isSelect = false; // Reset isSelect after submission
                        });
                      },
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
                      ),
                    ),
                  ],
                );
              }
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
