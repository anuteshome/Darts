import "package:hive_flutter/hive_flutter.dart";
// import "package:hive_flutter/hive_flutter.dart";

class TodoData {
  List<List<dynamic>> TodoList = [];
  final _mybox = Hive.box("myBoxT");

  void createInitialData() {
    TodoList = [
      ["Buy a Coffee", false],
      ["Fix engine bug in Timeline", true],
    ];
  }

  void loadData() {
    final storedList = _mybox.get("TODOLIST");
    if (storedList == null) {
      createInitialData();
      updateDatabase();
    } else {
      TodoList = List<List<dynamic>>.from(storedList);
    }
  }

  void updateDatabase() {
    _mybox.put("TODOLIST", TodoList);
  }
}
