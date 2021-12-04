import 'package:app/models/models.dart';
import 'package:app/widget/home_widget/rating.dart';
import 'package:flutter/material.dart';
import 'package:app/utls/utls.dart';

import 'cover.dart';
import 'info.dart';

class bestbook extends StatelessWidget {
  const bestbook({
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
                  width: screenWidth(context) * 0.4,
                  child: Text(
                    book.title,
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                    ),
                  )),
              Text(book.author),
              SizedBox(height: 10),
              Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Rating(
                  rating: book.rating,
                ),
                SizedBox(width: 5),
                Container(
                    width: screenWidth(context) * 0.4,
                    child: Text(book.details,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          fontSize: 7,
                          color: Colors.grey,
                        )))
              ])
            ],
          ),
        ),
        Positioned(
          top: -20,
          left: 150,
          child: BookCover(
            key: Key("123"),
            bookCover: book.bookCover,
            height: 200,
            width: 200,
          ),
        ),
        Text("Best book of the day")
      ],
    );
  }
}
