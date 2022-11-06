import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/books/books_search/books_search_bloc.dart';
import '../../injection.dart';
import '../screens/books/book_search_page.dart';
import '../screens/home/books_home_page.dart';
import '../screens/sign_in/sign_in_page.dart';

// OPTIONS:  BeamerLocationBuilder / SimpleLocationBuilder
final beamerLocationBuilder = BeamerLocationBuilder(
  beamLocations: [
    LoginLocation(),
    BooksLocation(),
  ],
);

//Home Beam

//Login Beam
class LoginLocation extends BeamLocation<BeamState> {
  @override
  List<String> get pathPatterns => ['/login', '/register'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        if (state.uri.pathSegments.contains('login'))
          const BeamPage(
            key: ValueKey('login'),
            title: 'Login',
            child: SignInPage(cardIndex: 0),
          ),
        if (state.uri.pathSegments.contains('register'))
          const BeamPage(
            key: ValueKey('register'),
            title: 'register',
            child: SignInPage(cardIndex: 1),
          ),
      ];
}

//Books Beam
class BooksLocation extends BeamLocation<BeamState> {
  @override
  List<String> get pathPatterns =>
      ['/books', '/books/search', '/books/:bookId'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        if (state.uri.pathSegments.contains('books'))
          const BeamPage(
            key: ValueKey('books'),
            title: 'Home Books',
            child: BooksHomePage(),
          ),

        if (state.uri.pathSegments.contains('search'))
           BeamPage(
            key: const ValueKey('books-search'),
            title: 'Books Search',
            child: BlocProvider(
              create: (context) => getIt<BooksSearchBloc>(),
              child: const BookSearchPage(),
            ),
          )

        // if (state.pathParameters.containsKey('bookId'))
        //   BeamPage(
        //     key: ValueKey('book-${state.pathParameters['bookId']}'),
        //     title: books.firstWhere((book) =>
        //         book['id'] == state.pathParameters['bookId'])['title'],
        //     child: BookDetailsScreen(
        //       book: books.firstWhere(
        //           (book) => book['id'] == state.pathParameters['bookId']),
        //     ),
        //   ),
      ];

  // final forbiddenPage = BeamPage(
  //   key: ValueKey('forbidden'),
  //   title: 'Forbidden',
  //   child: Scaffold(
  //     body: Center(
  //       child: Text('Forbidden.'),
  //     ),
  //   ),
  // );

  // @override
  // List<BeamGuard> get guards => [
  //       // Show forbiddenPage if the user tries to enter books/2, what i want if id not exist show forbiddenPage
  //       BeamGuard(
  //         pathPatterns: ['/books/2'],
  //         check: (context, location) => false,
  //         showPage: forbiddenPage,
  //       ),
  //     ];
}
