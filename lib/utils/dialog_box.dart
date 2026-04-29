import 'package:flutter/material.dart';
import 'package:todo_app/utils/my_buttons.dart';

class DialogBox extends StatelessWidget {
    final controller;
    final VoidCallback onSave;
    final VoidCallback onCancel;

    const DialogBox({
        super.key,
        required this.controller,
        required this.onSave,
        required this.onCancel,
    });

    @override
    Widget build(BuildContext context) {
        return AlertDialog(
            backgroundColor: Colors.red[100],

            content: Container(
                height: 120,
                child: Column(
                    children: [
                        // get user input
                        TextField(
                            controller: controller,
                            decoration: InputDecoration(
                                hintText: 'Add a new task',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                ),
                            ),
                        ),

                        // buttons: save and cancel
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                                // save button
                                MyButton(
                                    buttonName: 'Save',
                                    onPressed: onSave,
                                ),
                                
                                // cancel button
                                MyButton(
                                    buttonName: 'Cancel',
                                    onPressed: onCancel,
                                ),
                            ],
                        ),
                    ],
                ),
            ),
        );
    }
}