import 'package:flutter/material.dart';

class MyVariant extends StatelessWidget {
  String text;
  // ignore: prefer_typing_uninitialized_variables
  final function;

  MyVariant({Key? key, required this.text, required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: MaterialButton(
          color: Colors.black12,
          onPressed: function,
          child: Container(
            alignment: Alignment.center,
            width: 100,
            height: 50,
            child: Text(
              text,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ));
  }
}
