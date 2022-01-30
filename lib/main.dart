import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'views/HomeView.dart';

ThemeData _baseTheme = ThemeData(
  fontFamily: "Roboto",
  canvasColor: Colors.transparent,
);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky).then(
    (_) => runApp(const ConfettiApp()),
  );
}

class ConfettiApp extends StatelessWidget {
  const ConfettiApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Confetti',
      theme: _baseTheme,
      home: Scaffold(
        body: Container(
          child: Column(children: const <Widget>[
            Expanded(child: HomeView(), flex: 3),
          ]),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background/background.jpg'),
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
