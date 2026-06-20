import "package:flutter/material.dart";
import "../Components/AppDrawer.dart";

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Setting Page")),
      // drawer: AppDrawer(),
      body: Center(child: Text("This is Setting Page")),
    );
  }
}
