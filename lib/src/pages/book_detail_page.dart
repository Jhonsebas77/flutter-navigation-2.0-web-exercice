import 'package:flutter/material.dart';
import 'package:navigator_two_example/src/models/book_model.dart';
import 'package:navigator_two_example/src/pages/pages.dart';

class BookDetailsPage extends Page {
  final Book? book;

  BookDetailsPage({
    this.book,
  }) : super(key: ValueKey(book));

  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return BookDetailsScreen(book: book);
      },
    );
  }
}
