import 'package:flutter/material.dart';

class WelcomeBar extends StatelessWidget {
  const WelcomeBar({required this.name, required this.avatar});
  final String name;
  final String avatar;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      constraints: const BoxConstraints.expand(),
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Hi, $name!',
                textAlign: TextAlign.left,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 30.0),
                overflow: TextOverflow.ellipsis,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Image(
                  image: AssetImage('images/icons/hand-emoji.png'),
                ),
              )
            ],
          ),
          CircleAvatar(
            backgroundImage: AssetImage(avatar),
          ),
        ],
      ),
    ));
  }
}
