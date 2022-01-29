import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Center(
      child: RawMaterialButton(
        onPressed: () {},
        elevation: 30.0,
        fillColor: Colors.white,
        child: Image.asset('images/icons/party-popper.png'),
        padding: const EdgeInsets.all(40.0),
        shape: const CircleBorder(),
      ),
    ));
  }
}
