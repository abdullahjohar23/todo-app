import 'package:flutter/material.dart';
import 'package:todo_app/data/database.dart';
import 'package:todo_app/utils/todo_tile.dart';
import 'package:todo_app/utils/dialog_box.dart';

class HomePage extends StatefulWidget {
    const HomePage({super.key});

    @override
    State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    ToDoDatabase db = ToDoDatabase();

    @override
    void initState() {
        super.initState();
        db.loadData();
        setState(() {});
    }

    // text controller
    final _controller = TextEditingController();

    // checkbx tap function
    void checkBoxCahnged(bool? value, int index) {
        setState(() {
            db.toDoList[index][1] = !db.toDoList[index][1];
        });
    }

    // save new task
    void saveNewTask() {
        setState(() {
            db.toDoList.add([_controller.text, false]);
        });
        db.updateDataBase();
        _controller.clear();
        Navigator.of(context).pop();
    }

    // create a new task
    void createNewTask() {
        showDialog(
            context: context,
            builder: (context) {
                return DialogBox(
                    controller: _controller,
                    onSave: saveNewTask,
                    onCancel: () {
                        _controller.clear();
                        Navigator.of(context).pop();
                    }
                );
            }
        );
    }

    // delete task
    void deleteTask(int index) {
        setState(() {
            db.toDoList.removeAt(index);
        });
        db.updateDataBase();
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('To Do'),
                centerTitle: true,
                elevation: 0,
            ),
            backgroundColor: Color(0xFFE8F5E9),

            body: db.toDoList.isEmpty
            ? const Center(
                child: Text(
                    'Add a task to get started 📝',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
            )
            :
            ListView.builder(
                itemCount: db.toDoList.length,
                itemBuilder: (context, index) {
                    return ToDoTile(
                        taskName: db.toDoList[index][0],
                        taskCompleted: db.toDoList[index][1],
                        onChanged: (value) {
                            checkBoxCahnged(value, index);
                        },
                        deleteFunction: (context) => deleteTask(index),
                    );
                },
            ),

            floatingActionButton: FloatingActionButton(
                onPressed: () {
                    createNewTask();
                },
                backgroundColor: Colors.red[800],
                shape: const CircleBorder(),
                child: Icon(Icons.add, color: Colors.white,),
            ),
        );
    }
}
