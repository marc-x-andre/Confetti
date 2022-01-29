import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({required this.text, Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      padding: const EdgeInsets.all(20.0),
      child: Text('$text!',
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.grey[600], fontSize: 18.0)),
    );
  }
}
