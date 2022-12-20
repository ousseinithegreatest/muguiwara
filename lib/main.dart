import 'package:flutter/material.dart';
import 'package:muguiwara/views/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
        home: SplashPage(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.yellow,
            primaryTextTheme:
                TextTheme(headline6: TextStyle(color: Colors.black)))),
  );
}
