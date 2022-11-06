import 'dart:async';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_books/domain/book/entities/api_books_list.dart';

import '../../../application/books/book_add/book_add_bloc.dart';
import '../../shared/constants.dart';
import '../../widgets/two_sided_roundbutton.dart';

class SearchdBookDetailDialog extends StatelessWidget {
  const SearchdBookDetailDialog({
    Key? key,
    required this.book,
    //required CollectionReference<Map<String, dynamic>> bookCollectionReference,
  }) : super(key: key); //_bookCollectionReference = bookCollectionReference,

  final ApiBook book;
  //final CollectionReference<Map<String, dynamic>> _bookCollectionReference;

  @override
  Widget build(BuildContext context) {
    return BlocListener<BookAddBloc, BookAddState>(
      listener: (context, state) {
        state.maybeMap(
          addSuccess: (value) {
            FlushbarHelper.createSuccess(
              message: 'Book added successfully',
            ).show(context);
            //must w8 for snackbar to dismiss be fore poping the dialog
            Timer(const Duration(seconds: 4), () {
              Navigator.of(context).pop();
            });
          },
          addFailure: (value) {
            FlushbarHelper.createError(
              message: value.bookFailure.maybeMap(
                  bookAlreadyExists: (value) => "Book already exists",
                  orElse: () => "Something went wrong"),
            ).show(context);
          },
          orElse: () {},
        );
      },
      child: AlertDialog(
        content: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(book.thumbNail),
              radius: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                book.title,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Category: ${book.title}',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Page Count: ${book.pageCount}',
              ),
            ),
            Text('Author: ${book.authors}'),
            Text('Published: ${book.publishedDate}'),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.blueGrey.shade100, width: 1)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      book.description,
                      style:
                          const TextStyle(wordSpacing: 0.9, letterSpacing: 1.5),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        actions: [
          BlocBuilder<BookAddBloc, BookAddState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: TwoSidedRoundeButton(
                  radius: 30,
                  color: kButtonColor,
                  widget: state.maybeMap(
                    addInProgress: (_) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    orElse: () => const Text(
                      'Save',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  press: () {
                    //add the book to the firebase
                    context
                        .read<BookAddBloc>()
                        .add(BookAddEvent.add(book.toDomain()));
                  },
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TwoSidedRoundeButton(
              radius: 30,
              color: kButtonColor,
              widget: const Text(
                'Cancel',
                style: TextStyle(color: Colors.white),
              ),
              press: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
