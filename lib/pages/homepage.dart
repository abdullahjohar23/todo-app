import 'package:flutter/material.dart';
import 'package:todo_app/utils/todo_tile.dart';

class HomePage extends StatefulWidget {
    const HomePage({super.key});

    @override
    State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('To Do'),
                centerTitle: true,
                elevation: 0,
            ),
            backgroundColor: Color(0xFFE8F5E9),

            body: ListView(
                children: [
                    ToDoTile(
                        taskName: 'Make a To Do App',
                        taskCompleted: true,
                        onChanged: (value) {
                            // print('Checkbox is checked');
                        },
                    ),

                    ToDoTile(
                        taskName: 'Make a Weather App',
                        taskCompleted: false,
                        onChanged: (value) {
                            // print('Checkbox is checked');
                        },
                    ),
                ],
            ),
        );
    }
}
