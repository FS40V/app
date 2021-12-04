import 'package:app/models/models.dart';
import 'package:app/utls/utls.dart';
import 'package:flutter/material.dart';
import 'cover.dart';
import 'info.dart';

class Reading extends StatefulWidget {
  Reading({
    Key? key,
    required this.books,
  }) : super(key: key);

  final List<Book> books;

  @override
  State<Reading> createState() => _Reading();
}

class _Reading extends State<Reading> {
  bool isShowingCover = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "What are you Reading Today?",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            children: widget.books.map((book) {
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      BookInformation(
                        book: book,
                        onShowingDetails: (bool isShowingDetails) {
                          setState(() {
                            isShowingCover = !isShowingDetails;
                          });
                        },
                      ),
                      isShowingCover == true
                          ? BookCover(
                              bookCover: book.bookCover,
                              height: 150,
                              width: 150,
                            )
                          : SizedBox(),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
