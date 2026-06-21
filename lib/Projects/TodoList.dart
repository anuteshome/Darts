import "package:flutter/material.dart";
import "package:myapp/Components/DialogBox.dart";
import "package:myapp/Components/TodoTile.dart";

class TodoList extends StatefulWidget {
  TodoList({super.key});
  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final TextEditingController _textController = TextEditingController();

  List TodoList = [
    ["Buy a Coffee", false],
    ["fix Engine bug in Timeline", true],
  ];

  void checkboxChanged(bool? value, int index) {
    setState(() {
      TodoList[index][1] = !TodoList[index][1];
    });
  }

  void SaveBtn() {
    setState(() {
      TodoList.add([_textController.text, false]);
      _textController.clear();
    });
    Navigator.of(context).pop();
  }

  void CreateTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _textController,
          onSave: SaveBtn,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  void deleteTask(int index) {
    setState(() {
      TodoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.book), title: Text("Todo List Pro")),
      body: ListView.builder(
        itemCount: TodoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            TaskName: TodoList[index][0],
            TaskComplted: TodoList[index][1],
            onChanged: (value) => checkboxChanged(value, index),
            deleteTask: (context) => deleteTask(index),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: CreateTask,
        child: Icon(Icons.add),
      ),
    );
  }
}
