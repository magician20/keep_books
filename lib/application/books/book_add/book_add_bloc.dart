import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/book/entities/book.dart';
import '../../../domain/book/repository/book_failure.dart';
import '../../../domain/book/repository/i_book_repository.dart';

part 'book_add_state.dart';
part 'book_add_event.dart';
part 'book_add_bloc.freezed.dart';

@injectable
class BookAddBloc extends Bloc<BookAddEvent, BookAddState> {
  final IBookRepository _bookRepository;
  BookAddBloc(this._bookRepository) : super(const BookAddState.initial()) {
    on<_Add>(_mapAddNewBookToState);
  }

  //add data to firebase
  //emit sucess or failure
 FutureOr<void> _mapAddNewBookToState(_Add event, Emitter<BookAddState> emit) async {
    emit(const BookAddState.addInProgress());
    var existOrNot = await _bookRepository.checkBeforeCreate(event.book);
    if (existOrNot.isRight()) {
      if (existOrNot.getOrElse(() => false)) {
        emit(const BookAddState.addFailure(BookFailure.bookAlreadyExists()));
      } else {
        var either = await _bookRepository.create(event.book);
        if (either.isRight()) {
          emit(const BookAddState.addSuccess());
        } else {
          emit(const BookAddState.addFailure(BookFailure.unexpected()));
        }
      }
    }else{
      emit(const BookAddState.addFailure(BookFailure.unexpected()));
    }
  }
}
