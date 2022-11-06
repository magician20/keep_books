import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_books/injection.dart';
import 'package:keep_books/presentaion/widgets/avater_widget.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/books/book_actor/book_actor_bloc.dart';
import '../../../application/books/book_watcher/book_watcher_bloc.dart';
import '../../../application/books/book_watcher_active/book_watcher_active_bloc.dart';
import '../../../domain/book/entities/book.dart';
import '../../shared/constants.dart';
import '../../widgets/book_details_dialog.dart';
import '../../widgets/reading_list_card.dart';

class BooksHomePage extends StatefulWidget {
  const BooksHomePage({Key? key}) : super(key: key);

  @override
  State<BooksHomePage> createState() => _BooksHomePageState();
}

class _BooksHomePageState extends State<BooksHomePage> {
  @override
  Widget build(BuildContext context) {
    // fetchData();
    return MultiBlocProvider(
      providers: [
        BlocProvider<BookWatcherBloc>(
          create: (_) => getIt<BookWatcherBloc>(),
        ),
        BlocProvider<BookWatcherActiveBloc>(
          create: (_) => getIt<BookWatcherActiveBloc>(),
        ),
        // BlocProvider<BookActorBloc>(
        //   create: (_) => getIt<BookActorBloc>(),
        // ),
      ],
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white24,
          elevation: 0.0,
          toolbarHeight: 77,
          centerTitle: false,
          title: Row(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                child: ClipOval(
                  //i got problem here with small screen
                  child: Image.asset(
                    'icons/ic_launcher.png',
                    fit: BoxFit.fill,
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'A.Reader',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.redAccent, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state.status == AuthStatus.unauthenticated) {
                  Beamer.of(context).beamToNamed('/login');
                }
              },
              child: Flexible(
                child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: const AvatarWidget()),
              ), //start
            ), //fex size
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Beamer.of(context).beamToNamed('/books/search');
          },
          child: const Icon(Icons.add),
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 12, left: 12, bottom: 10),
              width: double.infinity,
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headline5,
                  children: const [
                    TextSpan(text: 'Your reading\n activity '),
                    TextSpan(
                      text: 'right now...',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // check ConnectionState.waiting  if true return CircularProgressIndicator
            //else draw this  widget but get data (userBookFilteredReadListStream / userBooksReadList)
            BlocBuilder<BookWatcherActiveBloc, BookWatcherActiveState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => Container(),
                  loadInProgress: (_) => Container(),
                  loadSuccess: (value) => Expanded(
                    flex: 1,
                    //Create Reading List
                    child: (value.books.size > 0)
                        ? ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: value.books.size,
                            itemBuilder: (context, index) {
                              Book book = value.books[index];
                              return InkWell(
                                child: ReadingListCard(
                                  key: ValueKey(book.id.getOrCrash()),
                                  book: book,
                                ),
                                onTap: () => showDialog(
                                    context: context,
                                    builder: (context) {
                                      return BookDetailsDialog(book: book);
                                    }),
                              );
                            },
                          )
                        : const Center(
                            child: Text(
                              'No books found. Add a book :)',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                  ),
                  loadFailure: (_) => Container(),
                );
              },
            ),

            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 12, left: 12, bottom: 10),
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Reading List',
                            style: TextStyle(
                                color: kBlackColor,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // check ConnectionState.waiting  if true return CircularProgressIndicator
            //else draw this  widget but get data (readingListListBook )
            BlocBuilder<BookWatcherBloc, BookWatcherState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => Container(),
                  loadInProgress: (_) => Container(),
                  loadSuccess: (value) => Expanded(
                    flex: 1,
                    //create Not started book List
                    child: (value.books.size > 0)
                        ? ListView.builder(
                             scrollDirection: Axis.horizontal,
                            itemCount: value.books.size,
                            itemBuilder: (context, index) {
                              Book book = value.books[index];
                              return InkWell(
                                 child:ReadingListCard(
                                      key: ValueKey("book"+book.id.getOrCrash()),
                                      book: book,
                                    ),
                                onTap: () => showDialog(
                                    context: context,
                                    builder: (context) {
                                     return BookDetailsDialog(book: book);
                                    }),
                              );
                            },
                          )
                        : const Center(
                            child: Text(
                              'No books found. Add a book :)',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                  ),
                  loadFailure: (_) => Container(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
