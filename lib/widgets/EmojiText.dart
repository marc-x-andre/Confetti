import 'package:flutter/material.dart';

class EmojiText extends StatelessWidget {
  final String emoji;
  final double fontSize;

  const EmojiText({Key? key, required this.emoji, this.fontSize = 14})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: emoji,
            style: TextStyle(fontFamily: 'EmojiOne', fontSize: fontSize),
          ),
        ],
      ),
    );
  }
}
