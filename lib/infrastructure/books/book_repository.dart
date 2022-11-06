import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:keep_books/domain/auth/entities/user.dart';
import 'package:keep_books/domain/book/repository/book_failure.dart';
import 'package:keep_books/domain/book/entities/book.dart';
import 'package:dartz/dartz.dart';
import 'package:keep_books/domain/book/repository/i_book_repository.dart';
import 'package:keep_books/infrastructure/books/bookdto.dart';
import 'package:keep_books/infrastructure/core/firestore_helpers.dart';
import 'package:keep_books/presentaion/shared/enum.dart';
import 'package:keep_books/presentaion/shared/util.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/book/entities/api_books_list.dart';
import 'books_service.dart';

@LazySingleton(as: IBookRepository)
class BookRepository implements IBookRepository {
  final FirebaseFirestore _firestore;
  final BooksService _booksService;

  BookRepository(this._firestore, this._booksService);

  //better if i can pass this api-books and then show them if one of them is added then i will call create
  //and pass the book that had been choosen
  //also maybe make search page to preserv the data of the search
  //also how to make the search page not add same page twice (that alread had been added to firebase)
  @override
  Future<Either<BookFailure, ApiBooksList>> getListOfBooksFromApi(String query,
      {int? startIndex, int? maxResults = 20}) async {
    try {
      var apiBookList =
          await _booksService.getListOfBooks(query, startIndex, maxResults);
      // i got Unexpected null value. here from toDomain idk why this happen when i request books for search keyward "Flutter"
      return right(apiBookList.toDomain());
    } catch (e) {
      return left(const BookFailure.unexpected());
    }
  }

  bool isUserAllowedToUpdate(String? id) {
    User user = _firestore.userBuilder();
    return user.id.getOrCrash() == id ? true : false;
  }

  ///Check for existing book in firebase before add
  @override
  Future<Either<BookFailure, bool>> checkBeforeCreate(Book book) async {
    try {
      User user = _firestore.userBuilder();
      var bookCollectionRef = _firestore
          .collection('books')
          .where("userId", isEqualTo: user.id.getOrCrash());
      var result = await bookCollectionRef
          .where("title", isEqualTo: book.title.getOrCrash())
          .where("author", isEqualTo: book.author.getOrCrash())
          .get()
          .then(
        (value) {
          return value.docs.isNotEmpty;
        },
      );
      return right(result);
    } catch (e) {
      // print(s.toString());
      return left(const BookFailure.unexpected());
    }
  }

  @override
  Future<Either<BookFailure, Unit>> create(Book book) async {
    try {
      final bookDto = BookDto.fromDomain(book);

      await _firestore
          .collection('books')
          .doc(bookDto.id)
          .set(bookDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const BookFailure.insufficientPermission());
      } else {
        return left(const BookFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<BookFailure, Unit>> delete(Book book) async {
    try {
      final bookID = book.id.getOrCrash();
      if (!isUserAllowedToUpdate(bookID)) {
        return left(const BookFailure.unableToUpdate());
      }

      await _firestore.collection('books').doc(bookID).delete();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const BookFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const BookFailure.unableToUpdate());
      } else {
        return left(const BookFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<BookFailure, Unit>> updateBookNotes(Book book) async {
    if (!isUserAllowedToUpdate(book.id.getOrCrash())) {
      return left(const BookFailure.unableToUpdate());
    }
    try {
      //first we need to update only data that can be changed like: Notes & Status & Time
      await _firestore
          .collection('books')
          .doc(book.id.getOrCrash())
          .update({'notes': book.notes.getOrCrash()});

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const BookFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const BookFailure.unableToUpdate());
      } else {
        return left(const BookFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<BookFailure, Unit>> updateBookStatus(Book book) async {
    if (!isUserAllowedToUpdate(book.id.getOrCrash())) {
      return left(const BookFailure.unableToUpdate());
    }
    try {
      var update = book.status.getOrCrash() == BookStatusEnum.notStarted.value
          ? { 'status': BookStatusEnum.started.value,
              'startedAt': fromDatetimeToTimestamp(DateTime.now())}
          : {'status': BookStatusEnum.finished.value,
              'finishedAt': fromDatetimeToTimestamp(DateTime.now())};

      //first we need to update only data that can be changed like: Notes & Status & Time
      await _firestore
          .collection('books')
          .doc(book.id.getOrCrash())
          .update(update);

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const BookFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const BookFailure.unableToUpdate());
      } else {
        return left(const BookFailure.unexpected());
      }
    }
  }

//list not have been started adding Notes yet
  @override
  Stream<Either<BookFailure, KtList<Book>>> watchAllUnStartedBooks() async* {
    User user = _firestore.userBuilder();
    yield* _firestore
        .collection('books')
        .where("userId", isEqualTo: user.id.getOrCrash())
        .where("status", isEqualTo: "Not Started")
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<BookFailure, KtList<Book>>(
            snapshot.docs
                .map((doc) => BookDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith(
      (error, stackTrace) {
        if (error is FirebaseException &&
            error.message!.contains('PERMISSION_DENIED')) {
          return left(const BookFailure.insufficientPermission());
        } else {
          return left(const BookFailure.unexpected());
        }
      },
    );
  }

  //list started adding Notes
  @override
  Stream<Either<BookFailure, KtList<Book>>> watchAllStartedBooks() async* {
    User user = _firestore.userBuilder();
    yield* _firestore
        .collection('books')
        .where("userId", isEqualTo: user.id.getOrCrash())
        .where("status", isEqualTo: "Started")
        //error fixed by add orderBy('notes') and make it Ascending as same as Firebase Field INDEX (that happen with other compare than equal)
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<BookFailure, KtList<Book>>(
            snapshot.docs
                .map((doc) => BookDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((error, stackTrace) {
      if (error is FirebaseException &&
          error.message!.contains('PERMISSION_DENIED')) {
        return left(const BookFailure.insufficientPermission());
      } else {
        return left(const BookFailure.unexpected());
      }
    });
  }
}
