import 'package:book_list/book_detail.dart';
import 'package:book_list/book_list.dart';
import 'package:book_list/model/book.dart';
import 'package:flutter/material.dart';

class RouterGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case ('/'):
        return MaterialPageRoute(
          builder: (context) => BookList(),
        );
      case ('/book_detail'):
        final selectedBook = settings.arguments as Book;
        return MaterialPageRoute(
          builder: (context) => BookDetail(
            selectedBook: selectedBook,
          ),
        );
    }
  }
}
