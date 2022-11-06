import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/book/entities/book.dart';
import '../../../domain/book/repository/book_failure.dart';
import '../../../domain/book/repository/i_book_repository.dart';

part 'book_actor_state.dart';
part 'book_actor_event.dart';
part 'book_actor_bloc.freezed.dart';

@injectable
class BookActorBloc extends Bloc<BookActorEvent, BookActorState> {
  final IBookRepository _bookRepository;
  BookActorBloc(this._bookRepository) : super(const BookActorState.initial()) {
    on<_StatusChanged>(_mapChangeBookStatusToState);
  }

  FutureOr<void> _mapChangeBookStatusToState(
      _StatusChanged event, Emitter<BookActorState> emit) async {
    emit(const BookActorState.actionInProgress());
    var isStatusUpdated = await _bookRepository.updateBookStatus(event.book);
    if (isStatusUpdated.isRight()) {
      emit(const BookActorState.statusChangeSuccess());
    } else {
      emit(const BookActorState.statusChangeFailure(
          BookFailure.unableToUpdate()));
    }
  }
}
