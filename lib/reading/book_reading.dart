import 'package:app/screens/read.dart';
import 'package:app/screens/home.dart';
import 'package:app/screens/splsh.dart';
import 'package:flutter/material.dart';

class BookReading extends StatelessWidget {
  BookReading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) {
          return Splash();
        },
        "/home": (context) {
          return Home();
        },
        "/read": (context) {
          return read();
        }
      },
    );
  }
}
