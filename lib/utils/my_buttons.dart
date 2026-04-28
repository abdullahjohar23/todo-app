import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
    final String buttonName;
    VoidCallback onPressed;

    MyButton({
        super.key,
        required this.buttonName,
        required this.onPressed
    });

    @override
    Widget build(BuildContext context) {
        return MaterialButton(
            color: Colors.red[800],
            onPressed: onPressed,
            child: Text(buttonName),
        );
    }
}
