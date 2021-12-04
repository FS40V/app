import 'package:app/models/models.dart';
import 'package:app/screens/read.dart';
import 'package:app/widget/home_widget/best_book.dart';
import 'package:app/widget/home_widget/continue.dart';
import 'package:app/widget/home_widget/reading.dart';
import 'package:flutter/material.dart';
import 'package:app/widget/home_widget/rectangle.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as User;

    return Scaffold(
      body: Stack(
        children: [
          rectangle(),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.13,
              ),
              Expanded(
                flex: 2,
                child: Reading(books: user.books),
              ),
              Expanded(flex: 1, child: bestbook(book: getBestBook(user.books))),
              Expanded(
                  flex: 1,
                  child:
                      continue_reading(book: getContinueReading(user.books))),
            ],
          ),
        ],
      ),
    );
  }

  Book getBestBook(List<Book> books) {
    List<Book> booksToSort = books.map((e) => e).toList();
    booksToSort.sort((a, b) => b.rating.compareTo(a.rating));

    return booksToSort.first;
  }

  Book getContinueReading(List<Book> books) {
    List<Book> readToSort = books.map((e) => e).toList();
    readToSort.sort((a, b) => b.read.compareTo(a.read));
    return readToSort.first;
  }
}
