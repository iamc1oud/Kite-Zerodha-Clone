import 'package:flutter/material.dart';

import 'ui/splash_screen/intro_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(
         textTheme: TextTheme(
           bodyText2: TextStyle(fontSize: 12),
           bodyText1: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
             caption: TextStyle(height: 1.35, fontSize: 14, color: Colors.grey),
             headline4: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
       ),
        home: IntroPage());
  }
}