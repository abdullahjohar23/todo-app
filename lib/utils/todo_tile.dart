import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
    final String taskName;
    final bool taskCompleted;
    final Function(bool?)? onChanged;

    const ToDoTile({
        required this.taskName,
        required this.taskCompleted,
        required this.onChanged,
        super.key,
    });

    @override
    Widget build(BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 20.0, top: 25.0),
            child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                    color: Colors.red[300],
                    borderRadius: BorderRadius.circular(12),
                ),
                
                child: Row(
                    children: [
                        // checkbox
                        Checkbox(
                            value: taskCompleted,
                            onChanged: onChanged,
                            activeColor: Colors.grey,
                            autofocus: true,
                        ),

                        // task name
                        Text(
                            taskName,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                decoration: taskCompleted
                                    ? TextDecoration.lineThrough
                                    : TextDecoration.none,
                            ),
                        ),
                    ],
                ),
            ),
        );
    }
}
