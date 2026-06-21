import "package:hive_flutter/hive_flutter.dart";
// import "package:hive_flutter/hive_flutter.dart";

class TodoData {
  List TodoList = [];
  final _mybox = Hive.box("mybox");

  void CreateIntalData() {
    List TodoList = [
      ["Buy a Coffee", false],
      ["fix Engine bug in Timeline", true],
    ];
  }

  void loadData() {
    TodoList = _mybox.get("TODOLIST");
  }

  void UpdateDatabase() {
    _mybox.put("TODOLIST", TodoList);
  }
}
