import 'package:flutter/material.dart';
import 'package:todo_app/utils/todo_tile.dart';

class HomePage extends StatefulWidget {
    const HomePage({super.key});

    @override
    State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    List toDoList = [
        ['To Do App', true],
        ['Weather App', false],
        ['Calculator App', false],
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('To Do'),
                centerTitle: true,
                elevation: 0,
            ),
            backgroundColor: Color(0xFFE8F5E9),

            body: ListView.builder(
                itemCount: toDoList.length,
                itemBuilder: (context, index) {
                    return ToDoTile(
                        taskName: toDoList[index][0],
                        taskCompleted: toDoList[index][1],
                        onChanged: (value) {
                            // print('Checkbox is checked');
                        },
                    );
                },
            ),
        );
    }
}
