import 'package:flutter/material.dart';

import 'data/list_data.dart';
import 'model/book.dart';

class BookList extends StatelessWidget {
  late List<Book> allBooks;
  BookList() {
    allBooks = prepareData();
    print(prepareData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Book List",
        ),
      ),
      body: Center(
        child: Text("Book List"),
      ),
    );
  }

  List<Book> prepareData() {
    List<Book> tentativeList = [];
    for (int i = 0; i < 10; i++) {
      var bookName = Strings.Books_Name[i];
      var bookAuthor = Strings.Books_Authors[i];
      var bookDetail = Strings.Books_Detail[i];
      var smallImage = Strings.Small_Images[i];
      var bigImage = Strings.Big_Images[i];
      Book addBook =
          Book(bookName, bookAuthor, bookDetail, smallImage, bigImage);
      tentativeList.add(addBook);
    }
    return tentativeList;
  }
}
