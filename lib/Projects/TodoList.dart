import "package:flutter/material.dart";
import "package:myapp/Components/DialogBox.dart";
import "package:myapp/Components/TodoTile.dart";
import "package:myapp/DB/Database.dart";

class TodoList extends StatefulWidget {
  TodoList({super.key});
  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final TextEditingController _textController = TextEditingController();

  TodoData db = TodoData();

  @override
  void initState() {
    super.initState();
    db.loadData();
  }

  void checkboxChanged(bool? value, int index) {
    setState(() {
      db.TodoList[index][1] = !db.TodoList[index][1];
      db.updateDatabase();
    });
  }

  void SaveBtn() {
    setState(() {
      db.TodoList.add([_textController.text, false]);
      db.updateDatabase();
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
      db.TodoList.removeAt(index);
      db.updateDatabase();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.book), title: Text("Todo List Pro")),
      body: ListView.builder(
        itemCount: db.TodoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            TaskName: db.TodoList[index][0],
            TaskComplted: db.TodoList[index][1],
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
