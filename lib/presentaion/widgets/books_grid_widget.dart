import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/books/books_search/books_search_bloc.dart';
import '../../domain/book/entities/api_books_list.dart';
import 'book_card_widget.dart';

/// Grid view of [ApiBook]s.
class BooksGrid extends StatefulWidget {
  final BooksSearchState booksSearchState;

  const BooksGrid({
    Key? key,
    required this.booksSearchState,
  }) : super(key: key);

  @override
  State<BooksGrid> createState() => _BooksGridState();
}

class _BooksGridState extends State<BooksGrid> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: _handleScrollNotification,
      child: GridView.builder(
        controller: _scrollController,
        itemCount: calculateListItemCount(widget.booksSearchState),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1 / 1.2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0),
        itemBuilder: (context, index) {
          //new PageCard will be create here and pass the ID to show on the url
          return index >= widget.booksSearchState.apiBooksList!.length
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : BookCardWidget(
                  apiBook: widget.booksSearchState.apiBooksList![index],
                  index: index,
                );
        },
      ),
    );
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    // if (notification is ScrollEndNotification) {
    //   if (notification.metrics.pixels == notification.metrics.maxScrollExtent) {
    //     context
    //         .read<BooksSearchBloc>()
    //         .add(const BooksSearchEvent.nextFetchBooks(false));
    //   }
    // }
    // return false;
    if (notification is ScrollEndNotification &&
        _scrollController.position.extentAfter == 0) {
      context
          .read<BooksSearchBloc>()
          .add(const BooksSearchEvent.nextFetchBooks(false));
    }
    return false;
  }

  int calculateListItemCount(BooksSearchState state) {
    if (state.booksSearchStatus == BooksSearchStatus.loading && state.isFirstFetch==false ) {
      return state.apiBooksList!.length + 1;
    }
    return state.apiBooksList!.length;
  }
}
