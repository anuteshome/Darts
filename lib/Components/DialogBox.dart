import "package:flutter/material.dart";

class DialogBox extends StatefulWidget {
  

  DialogBox({super.key, required this.controller,required this.onSave,required this.onCancel});

  @override

  State<DialogBox> createState() => _DialogBoxState();

  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        height: 200,
        child: Column(
          children: [
            // Text(MyTask),
            SizedBox(height: 20),
            Center(
              child: TextField(
                controller: widget.controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your Task",
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: widget.onCancel,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  child: Text("Cancel", style: TextStyle(color: Colors.white)),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed:widget.onSave,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  child: Text("Save", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
