part of 'book_watcher_active_bloc.dart';

@freezed
class BookWatcherActiveState with _$BookWatcherActiveState {
  const factory BookWatcherActiveState.initial() = _Initial;
  const factory BookWatcherActiveState.loadInProgress() = _LoadInProgress;
  ///[books] is a list of active books 
  const factory BookWatcherActiveState.loadSuccess(KtList<Book> books) =
      _LoadSuccess;
  const factory BookWatcherActiveState.loadFailure(BookFailure bookFailure) =
      _LoadFailure;
}
