import 'package:flutter/material.dart';
import '../widgets/task/TaskTitle.dart';
import '../widgets/task/TaskContent.dart';

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const <Widget>[
          TaskTitle(
            title: 'Aprender Flutter',
          ),
          TaskContent(text: 'Lorem ipsum lorem')
        ],
      ),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0))),
    );
  }
}
