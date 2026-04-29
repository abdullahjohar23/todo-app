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
        return Padding(
          padding: const EdgeInsets.only(top: 10.0),
            child: MaterialButton(
                color: const Color(0xFF2A4B41),
                onPressed: onPressed,
                child: Text(buttonName, style: TextStyle(color: Colors.white),),
            ),
        );
    }
}
