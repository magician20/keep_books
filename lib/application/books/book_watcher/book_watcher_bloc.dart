import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../domain/book/entities/book.dart';
import '../../../domain/book/repository/book_failure.dart';
import '../../../domain/book/repository/i_book_repository.dart';

part 'book_watcher_state.dart';
part 'book_watcher_event.dart';
part 'book_watcher_bloc.freezed.dart';

@injectable
class BookWatcherBloc extends Bloc<BookWatcherEvent, BookWatcherState> {
  final IBookRepository _bookRepository;

  late StreamSubscription<Either<BookFailure, KtList<Book>>> _bookStreamSubscription;

  BookWatcherBloc(this._bookRepository)
      : super(const BookWatcherState.initial()) {
    on<_BookWatchAllStarted>(_mapBookWatchAllState);
    on<_BooksReceived>(_mapBooksReceivedstate);
        _bookStreamSubscription = _bookRepository
        .watchAllUnStartedBooks()
        .listen((failureOrBooks) => add(_BooksReceived(failureOrBooks)));
  }

  FutureOr<void> _mapBookWatchAllState(
      _BookWatchAllStarted event, Emitter<BookWatcherState> emit) async {
    emit(const BookWatcherState.loadInProgress());
    await _bookStreamSubscription.cancel();
    _bookStreamSubscription = _bookRepository
        .watchAllUnStartedBooks()
        .listen((failureOrBooks) => add(_BooksReceived(failureOrBooks)));
  }


  FutureOr<void> _mapBooksReceivedstate(
      _BooksReceived event, Emitter<BookWatcherState> emit) {
    emit(event.failureOrBooks.fold(
        (bookFailure) => BookWatcherState.loadFailure(bookFailure),
        (books) => BookWatcherState.loadSuccess(books)));
  }

  @override
  Future<void> close() {
    _bookStreamSubscription.cancel();
    return super.close();
  }
}
