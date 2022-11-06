import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../domain/book/entities/book.dart';
import '../../../domain/book/repository/book_failure.dart';
import '../../../domain/book/repository/i_book_repository.dart';

part 'book_watcher_active_state.dart';
part 'book_watcher_active_event.dart';
part 'book_watcher_active_bloc.freezed.dart';

@injectable
class BookWatcherActiveBloc extends Bloc<BookWatcherActiveEvent, BookWatcherActiveState> {
  final IBookRepository _bookRepository;

  late StreamSubscription<Either<BookFailure, KtList<Book>>>
      _bookActiveStreamSubscription;

  BookWatcherActiveBloc(this._bookRepository)
      : super(const BookWatcherActiveState.initial()) {
    on<_BookWatchActiveStarted>(_mapBookWatchActiveState);
    on<_BooksReceived>(_mapBooksReceivedstate);
    _bookActiveStreamSubscription = _bookRepository
        .watchAllStartedBooks()
        .listen((failureOrBooks) => add(_BooksReceived(failureOrBooks)));
  }

  FutureOr<void> _mapBookWatchActiveState(_BookWatchActiveStarted event,
      Emitter<BookWatcherActiveState> emit) async {
    emit(const BookWatcherActiveState.loadInProgress());
    await _bookActiveStreamSubscription.cancel();
    _bookActiveStreamSubscription = _bookRepository
        .watchAllStartedBooks()
        .listen((failureOrBooks) => add(_BooksReceived(failureOrBooks)));
  }

  FutureOr<void> _mapBooksReceivedstate(
      _BooksReceived event, Emitter<BookWatcherActiveState> emit) {
    emit(event.failureOrBooks.fold(
        (bookFailure) => BookWatcherActiveState.loadFailure(bookFailure),
        (books) => BookWatcherActiveState.loadSuccess(books)));
  }

  @override
  Future<void> close() {
    _bookActiveStreamSubscription.cancel();
    return super.close();
  }
}
