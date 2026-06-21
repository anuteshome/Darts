import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import "package:hive_flutter/hive_flutter.dart";
import 'package:myapp/Projects/TodoList.dart';
import 'Pages/First.dart';
import 'Pages/Homepage.dart';
import 'Pages/Setting.dart';
import "Projects/Project.dart";
import "Projects/TodoSimple.dart";

void main() async {
  
  await Hive.initFlutter();
  await Hive.openBox("myBoxT");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List _pages = [Home(), First(), Setting()];
  List name = ["Flutter", "Dart", "Android", "iOS", "Web", "Desktop"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoList(),
      routes: {
        'home_pages': (context) => Home(),
        'second_pages': (context) => Setting(),
        'first_pages': (context) => First(),
      },
    );
  }
}
