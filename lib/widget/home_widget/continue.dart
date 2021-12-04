import 'package:app/utls/utls.dart';
import 'package:app/widget/home_widget/cover.dart';
import 'package:app/widget/home_widget/info.dart';
import 'package:app/widget/home_widget/rating.dart';
import 'package:app/widget/home_widget/reading.dart';
import 'package:flutter/material.dart';
import 'package:app/models/models.dart';

class continue_reading extends StatelessWidget {
  const continue_reading({
    Key? key,
    required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: screenHeight(context) * 0.2,
          width: screenWidth(context) * 0.8,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: screenWidth(context) * 0.2,
                  child: Text(
                    book.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                    ),
                  )),
              Text(book.author),
              SizedBox(height: 10),
              Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                SizedBox(width: 10),
                Container(
                  width: screenWidth(context) * 0.2,
                  color: Colors.white,
                )
              ])
            ],
          ),
        ),
        Positioned(
          top: -20,
          left: 150,
          child: BookCover(
            key: Key("12"),
            bookCover: book.bookCover,
            height: 150,
            width: 150,
          ),
        ),
        Text("Continue Reading...")
      ],
    );
  }
}
