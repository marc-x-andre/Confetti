import 'package:flutter/material.dart';
import '../widgets/WelcomeBar.dart';
import '../widgets/task/TaskList.dart';
import '../widgets/button/MainButton.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          const WelcomeBar(name: 'Jose', avatar: 'images/icons/avatar.png'),
          TaskList()
        ],
      ),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0))),
    );
  }
}
