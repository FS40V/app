import 'package:app/models/models.dart';
import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  const BookCover({
    Key? key,
    required this.bookCover,
    required int height,
    required int width,
  }) : super(key: key);

  final String bookCover;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: NetworkImage(bookCover),
        height: 80,
        width: 70,
      ),
    );
  }
}
