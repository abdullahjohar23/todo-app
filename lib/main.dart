import 'package:flutter/material.dart';
import 'package:todo_app/pages/homepage.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
    // initializing the hive
    await Hive.initFlutter();

    // open a box
    var box = await Hive.openBox('mybox');

    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            
            theme: ThemeData(
                appBarTheme: AppBarTheme(
                    backgroundColor: Colors.red[800], // this will be the color of the AppBar in all pages
                ),
            ),

            home: HomePage(),
        );
    }
}
