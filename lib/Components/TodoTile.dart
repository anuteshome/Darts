import "package:flutter/material.dart";
import "package:flutter_slidable/flutter_slidable.dart";

class TodoTile extends StatelessWidget {
  final String TaskName;
  final bool TaskComplted;
  final Function(bool?)? onChanged;
  
  TodoTile({
    super.key,
    required this.TaskName,
    required this.TaskComplted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            children: [
              Checkbox(
                value: TaskComplted,
                onChanged: onChanged,
                activeColor: Colors.black,
              ),
              Text(
                TaskName,
                style: TextStyle(
                  decoration: TaskComplted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
