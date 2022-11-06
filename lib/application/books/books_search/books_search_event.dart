part of 'books_search_bloc.dart';

@freezed
class BooksSearchEvent with _$BooksSearchEvent {
  const factory BooksSearchEvent.startFetchBooks(String query, bool isFirstFetch) =
      _StartFetchBooks;
  const factory BooksSearchEvent.nextFetchBooks(bool isFirstFetch) = _NextFetchBooks;
}
