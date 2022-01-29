import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  const TaskTitle({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          constraints: const BoxConstraints.expand(),
          padding: const EdgeInsets.all(20.0),
          child: Text('$title!',
              textAlign: TextAlign.left,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 30.0)),
        ),
        flex: 1);
  }
}
