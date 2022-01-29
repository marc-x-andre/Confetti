import 'package:flutter/material.dart';

class TaskContent extends StatelessWidget {
  const TaskContent({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          constraints: const BoxConstraints.expand(),
          padding: const EdgeInsets.all(20.0),
          child: Text('$text!',
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.grey[600], fontSize: 18.0)),
        ),
        flex: 8);
  }
}
