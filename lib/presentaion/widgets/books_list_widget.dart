import 'package:flutter/material.dart';
import 'package:keep_books/domain/book/entities/api_books_list.dart';

import 'book_card_widget.dart';

class BookListWidget extends StatelessWidget {
  final List<ApiBook> books;
  const BookListWidget({
    Key? key,
    required this.books,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: books.length,
     // scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return BookCardWidget(
          apiBook: books[index],
          index: index,
        );
      },
    );
  }
}
