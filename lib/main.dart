import 'package:flutter/material.dart';
import 'package:todo_app/pages/homepage.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized(); 
    
    await Hive.initFlutter(); // initializing the hive
    await Hive.openBox('mybox'); // open a box

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
                    backgroundColor: const Color(0xFF4A6B5D), // this will be the color of the AppBar in all pages
                ),

                scaffoldBackgroundColor: const Color(0xFFF5F7F2), // this will be the background color of all pages
            ),

            home: HomePage(),
        );
    }
}
