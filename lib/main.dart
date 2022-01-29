import 'package:flutter/material.dart';
import 'views/HomeView.dart';

void main() => runApp(const ConfettiApp());

class ConfettiApp extends StatelessWidget {
  const ConfettiApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Confetti',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          child:
              Column(children: <Widget>[Expanded(child: HomeView(), flex: 3)]),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background/background.jpg'),
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
