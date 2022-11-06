import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:keep_books/domain/book/repository/i_book_repository.dart';

import '../../../domain/book/entities/api_books_list.dart';

part 'books_search_state.dart';
part 'books_search_event.dart';
part 'books_search_bloc.freezed.dart';

@injectable
class BooksSearchBloc extends Bloc<BooksSearchEvent, BooksSearchState> {
  final IBookRepository _bookRepository;
  BooksSearchBloc(this._bookRepository)
      : super( BooksSearchState.initial()) {
    on<_StartFetchBooks>(_mapStartNewFecthToState);
    on<_NextFetchBooks>(_mapContinueFetchToState);
  }

  ///Hold changebale Data that will be used in the search page
  String query = '';

  //*********************Implemention for generate States from events*************/

  FutureOr<void> _mapStartNewFecthToState(
      _StartFetchBooks event, Emitter<BooksSearchState> emit) async {
    query = event.query;

    emit(
      state.copyWith(
        booksSearchStatus: BooksSearchStatus.loading,
        isFirstFetch: event.isFirstFetch,
        apiBooksList: [],
      ),
    );
    var apiBooksListFuture = await _bookRepository.getListOfBooksFromApi(
      query,
      startIndex: 0,
    );
    apiBooksListFuture.fold(
      (failure) => emit(
        state.copyWith(
          booksSearchStatus: BooksSearchStatus.failure,
        ),
      ),
      (bookslist) {
        emit(
          state.copyWith(
            booksSearchStatus: BooksSearchStatus.success,
            apiBooksList: <ApiBook>[
              ...?state.apiBooksList,
              ...bookslist.apiBooks.asList()
            ],
          ),
        );
      },
    );
  }

  FutureOr<void> _mapContinueFetchToState(
      _NextFetchBooks event, Emitter<BooksSearchState> emit) async {
    //why i left this when i didn't need cause of event problem
    emit(
      state.copyWith(
        booksSearchStatus: BooksSearchStatus.loading,
        isFirstFetch: event.isFirstFetch,
      ),
    );
    var apiBooksListFuture = await _bookRepository.getListOfBooksFromApi(
      query,
      startIndex: state.apiBooksList?.length ?? 0,
    );
    apiBooksListFuture.fold(
      (failure) => emit(
        state.copyWith(
          booksSearchStatus: BooksSearchStatus.failure,
          isFirstFetch: event.isFirstFetch,
        ),
      ),
      (bookslist) {
        emit(
          state.copyWith(
            booksSearchStatus: BooksSearchStatus.success,
            isFirstFetch: event.isFirstFetch,
            apiBooksList: <ApiBook>[
              ...?state.apiBooksList,
              ...bookslist.apiBooks.asList()
            ],
          ),
        );
      },
    );
  }
}
