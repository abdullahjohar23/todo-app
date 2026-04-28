import 'package:flutter/material.dart';
import 'package:todo_app/utils/my_buttons.dart';

class DialogBox extends StatelessWidget {
    const DialogBox({super.key});

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
                                    onPressed: () {},
                                ),
                                
                                // cancel button
                                MyButton(
                                    buttonName: 'Cancel',
                                    onPressed: () {},
                                ),
                            ],
                        ),
                    ],
                ),
            ),
        );
    }
}