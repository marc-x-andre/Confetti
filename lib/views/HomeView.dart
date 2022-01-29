import 'package:flutter/material.dart';
import '../widgets/WelcomeBar.dart';
import '../widgets/MainButton.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const <Widget>[
          //   WelcomeBar(name: 'Jose', avatar: 'images/icons/avatar.png'),
          MainButton()
        ],
      ),
    );
  }
}
