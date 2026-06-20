import "package:flutter/material.dart";
import "package:myapp/Components/DialogBox.dart";
import "Setting.dart";
import "../Components/AppDrawer.dart";

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Page")),
      // drawer: const AppDrawer(),
      // body:DialogBox(),
    );
  }
}
