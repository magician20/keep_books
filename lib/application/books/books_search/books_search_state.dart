part of 'books_search_bloc.dart';

enum BooksSearchStatus { initial, loading, success, failure }
@freezed
class BooksSearchState with _$BooksSearchState{
   const factory BooksSearchState({
    List<ApiBook>? apiBooksList,
    bool? isFirstFetch,
    required BooksSearchStatus booksSearchStatus, 
  }) = _BooksSearchState;

  factory BooksSearchState.initial() => const BooksSearchState(
        apiBooksList: [],
        isFirstFetch: true,
        booksSearchStatus: BooksSearchStatus.initial,
      );

 }