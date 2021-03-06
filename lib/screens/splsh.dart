import 'dart:convert';

import 'package:app/models/models.dart';
import 'package:app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    getUserData();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushNamed(Home.routeName, arguments: this.user);
    });
    super.initState();
  }

  late User user;

  Future<void> getUserData() async {
    final data = await rootBundle.loadString('assets/data/users.json');
    final Map<String, dynamic> rawData = jsonDecode(data);
    final userData = rawData["users"]["123456"];
    this.user = User.fromJson(userData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCEBEE),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
