import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_books/domain/book/entities/api_books_list.dart';
import 'package:keep_books/injection.dart';

import '../../application/books/book_add/book_add_bloc.dart';
import '../screens/books/searched_book_detail_dialog.dart';

class BookCardWidget extends StatefulWidget {
  //maybe make bas class for apiBook and book
  final ApiBook apiBook;
  final int? index;

  const BookCardWidget({
    Key? key,
    required this.apiBook,
    this.index,
  }) : super(key: key);

  @override
  State<BookCardWidget> createState() => _BookCardWidgetState();
}

class _BookCardWidgetState extends State<BookCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Card(
        elevation: 5,
        color: const Color(0xfff6f4ff),
        child: Wrap(
          children: [
            Image.network(
              widget.apiBook.thumbNail,
              height: 100,
              width: 160,
            ),
            ListTile(
              title: Text(
                widget.apiBook.title,
                style: const TextStyle(color: Color(0xff5d48b6)),
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                widget.apiBook.authors,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return BlocProvider(
                      create: (context) => getIt<BookAddBloc>(),
                      child: SearchdBookDetailDialog(book: widget.apiBook),
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
