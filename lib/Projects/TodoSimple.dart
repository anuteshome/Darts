import "package:flutter/material.dart";

class Todosimple extends StatefulWidget {
  const Todosimple({super.key});

  @override
  State<Todosimple> createState() => _TodosimpleState();
}

class _TodosimpleState extends State<Todosimple> {
  TextEditingController MyController = TextEditingController();

  List<String> Name = [];
  void _WriteName() {
    setState(() {
      Name.add(MyController.text);
      MyController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Name.join("\n")),
              SizedBox(height: 20),
              TextField(
                controller: MyController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your name",
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                onPressed: _WriteName,
                child: Text("Save", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
