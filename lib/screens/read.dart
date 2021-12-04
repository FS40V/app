import 'package:app/models/models.dart';
import 'package:app/utls/utls.dart';
import 'package:app/widget/home_widget/cover.dart';
import 'package:app/widget/home_widget/info.dart';
import 'package:flutter/material.dart';

class read extends StatelessWidget {
  const read({
    Key? key,
  }) : super(key: key);

  static const String routeName = '/read';
  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        height: screenHeight(context) * 0.1,
        width: screenWidth(context) * 0.9,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
    ]);
  }
}
