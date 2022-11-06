part of 'book_watcher_bloc.dart';

@freezed
class BookWatcherEvent with _$BookWatcherEvent {
    const factory BookWatcherEvent.watchAllStarted() = _BookWatchAllStarted;
  const factory BookWatcherEvent.booksReceived(
    Either<BookFailure, KtList<Book>> failureOrBooks,
  ) = _BooksReceived;
}