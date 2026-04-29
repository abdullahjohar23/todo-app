import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
    final String taskName;
    final bool taskCompleted;
    final Function(bool?)? onChanged;
    final Function(BuildContext)? deleteFunction;

    const ToDoTile({
        required this.taskName,
        required this.taskCompleted,
        required this.onChanged,
        required this.deleteFunction,
        super.key,
    });

    @override
    Widget build(BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 20.0, top: 25.0),
            child: Slidable(
                endActionPane: ActionPane(
                    motion: StretchMotion(),
                    children: [
                        SlidableAction(
                            onPressed: deleteFunction,
                            icon: Icons.delete,
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                        ),
                    ]
                ),
                
                child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                        color: const Color(0xFFA8C2B4),
                        borderRadius: BorderRadius.circular(12),
                    ),
                    
                    child: Row(
                        children: [
                            // checkbox
                            Checkbox(
                                value: taskCompleted,
                                onChanged: onChanged,
                                activeColor: const Color(0xFFA40000),
                                autofocus: true,
                            ),
                
                            // task name
                            Text(
                                taskName,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    decoration: taskCompleted
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
