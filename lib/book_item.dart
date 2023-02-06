import 'package:book_list/book_detail.dart';
import 'package:book_list/model/book.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final Book listedBook;
  const BookItem({required this.listedBook, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        onTap: () {
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) => BookDetail(
          //       selectedBook: listedBook,
          //     ),
          //   ),
          // );
          Navigator.of(context).pushNamed(
            '/book_detail',
            arguments: listedBook,
          );
        },
        leading: Image.asset(
          'assets/images/${listedBook.smallImage}',
          width: 75,
          height: 75,
        ),
        title: Text(
          listedBook.bookName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        subtitle: Text(
          listedBook.bookAuthor,
        ),
      ),
    );
  }
}
