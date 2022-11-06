import 'package:dartz/dartz.dart';
import 'package:keep_books/domain/book/entities/book.dart';
import 'package:keep_books/domain/book/repository/book_failure.dart';
import 'package:kt_dart/kt.dart';

import '../entities/api_books_list.dart';

abstract class IBookRepository {
  Future<Either<BookFailure, Unit>> create(Book book);
  Future<Either<BookFailure, Unit>> updateBookStatus(Book book);
  Future<Either<BookFailure, Unit>> updateBookNotes(Book book);
  Future<Either<BookFailure, Unit>> delete(Book book);
  //return all books not have been started yet
  Stream<Either<BookFailure, KtList<Book>>> watchAllUnStartedBooks();
  //1-return only started or finished books
  Stream<Either<BookFailure, KtList<Book>>> watchAllStartedBooks();
  Future<Either<BookFailure, ApiBooksList>> getListOfBooksFromApi(String query,{int? startIndex,int? maxResults});
   Future<Either<BookFailure, bool>> checkBeforeCreate(Book book);
}
