import 'package:book_list/book_item.dart';
import 'package:flutter/material.dart';

import 'data/list_data.dart';
import 'model/book.dart';

class BookList extends StatelessWidget {
  late List<Book> allBooks;
  BookList({super.key}) {
    allBooks = prepareData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Book List",
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: allBooks.length,
          itemBuilder: (context, index) {
            return BookItem(listedBook: allBooks[index]);
          },
        ),
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
      Book addBook = Book(
        bookName,
        bookAuthor,
        bookDetail,
        smallImage,
        bigImage,
      );
      tentativeList.add(addBook);
    }
    return tentativeList;
  }
}
