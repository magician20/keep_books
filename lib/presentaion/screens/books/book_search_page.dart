import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/books/books_search/books_search_bloc.dart';

import '../../widgets/books_grid_widget.dart';
import '../../widgets/input_decoration.dart';

class BookSearchPage extends StatefulWidget {
  const BookSearchPage({Key? key}) : super(key: key);

  @override
  _BookSearchPageState createState() => _BookSearchPageState();
}

class _BookSearchPageState extends State<BookSearchPage> {
  late TextEditingController _searchTextController;
  String oldQuery = '';

  @override
  void initState() {
    super.initState();
    _searchTextController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Book Search'),
          backgroundColor: Colors.redAccent,
        ),
        body: Material(
          elevation: 0.0,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.9,
                    //error overflowing RenderFlex has an orientation of Axis.vertical because of Text field height fixed
                    //eveb if it fleixable it will be overflowing if not add flex for bot text and list
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Form(
                            child: TextField(
                              onSubmitted: (newQuery) {
                                if (newQuery.isEmpty || oldQuery == newQuery) {
                                  //notify user must enter a new value
                                  return;
                                }
                                context.read<BooksSearchBloc>().add(
                                    BooksSearchEvent.startFetchBooks(
                                        newQuery, true));
                                oldQuery = newQuery;
                              },
                              controller: _searchTextController,
                              decoration: buildInputDecoration(
                                  label: 'Search',
                                  hintText: 'Flutter Development'),
                            ),
                          ),
                        ),
                        BlocBuilder<BooksSearchBloc, BooksSearchState>(
                          builder: (context, state) {
                            switch (state.booksSearchStatus) {
                              case BooksSearchStatus.initial:
                                return const Padding(
                                    padding: EdgeInsets.only(top: 25.0),
                                    child: Center(
                                      child: Text('Start Search'),
                                    ));
                              case BooksSearchStatus.loading:
                                if (state.isFirstFetch!) {
                                  return const Padding(
                                    padding: EdgeInsets.only(top: 25.0),
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                } else {
                                  continue success;
                                }
                              success:
                              case BooksSearchStatus.success:
                                return (state.apiBooksList!.isNotEmpty)
                                    ? Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15.0),
                                          child: BooksGrid(
                                            booksSearchState: state,
                                          ),
                                        ),
                                      )
                                    : const Center(
                                        child: Text('Empty List'),
                                      );
                              case BooksSearchStatus.failure:
                              default:
                                return const Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: Center(
                                    child: Text('Something went wrong'),
                                  ),
                                );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
