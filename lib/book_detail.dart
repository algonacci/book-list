import 'package:book_list/model/book.dart';
import 'package:flutter/material.dart';

class BookDetail extends StatelessWidget {
  final Book selectedBook;
  const BookDetail({required this.selectedBook, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            title: Text(selectedBook.bookName),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/${selectedBook.bigImage}',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Text(
                    selectedBook.bookDetail,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
