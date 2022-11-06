part of 'book_watcher_active_bloc.dart';

@freezed
class BookWatcherActiveEvent with _$BookWatcherActiveEvent {
    const factory BookWatcherActiveEvent.watchActiveStarted() =
      _BookWatchActiveStarted;
        const factory BookWatcherActiveEvent.booksReceived(
    Either<BookFailure, KtList<Book>> failureOrBooks,
  ) = _BooksReceived;
}