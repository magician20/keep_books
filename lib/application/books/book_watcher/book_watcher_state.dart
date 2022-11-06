part of 'book_watcher_bloc.dart';

@freezed
class BookWatcherState with _$BookWatcherState {
  const factory BookWatcherState.initial() = _Initial;
  const factory BookWatcherState.loadInProgress() = _LoadInProgress;
  const factory BookWatcherState.loadSuccess(KtList<Book> books) = _LoadSuccess;
  const factory BookWatcherState.loadFailure(BookFailure bookFailure) =
      _LoadFailure;
}
