import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keep_books/infrastructure/core/firestore_helpers.dart';
import 'package:kt_dart/collection.dart';

import '../../../presentaion/shared/enum.dart';
import '../../core/value_objects.dart';
import '../validate/value_object.dart';
import 'book.dart';

part 'api_books_list.freezed.dart';

@freezed
class ApiBooksList with _$ApiBooksList {
  const ApiBooksList._();

  factory ApiBooksList({
    int? totalItems,
    required KtList<ApiBook> apiBooks,
  }) = _ApiBooksList;
}


@freezed
class ApiBook with _$ApiBook {
  const ApiBook._();

  factory ApiBook({
    required String title,
    required String authors,
    required String thumbNail,
    required String categories,
    required String publishedDate,
    required String description,
    required int pageCount,
  }) = _ApiBook;

  //here start first creation of the book
  Book toDomain() {
    return Book(
      //book id is equal document id
      id: UniqueId.fromUniqueString(FirebaseFirestore.instance.collection('books').doc().id) ,
      title: BookTitle(title),
      author: StringSingleLine(authors),
      notes: BookNote(""),
      photoUrl: StringSingleLine(thumbNail),
      categories: StringSingleLine(categories),
      publishedDate: StringSingleLine(publishedDate),
      description: BookText(description),
      rating: 0.0,
      pageCount: pageCount,
      userId: FirebaseFirestore.instance.userBuilder().id,
      status: BookStatus(BookStatusEnum.notStarted.value),
      createdAt: DateTime.now() ,
      // startedAt: ,  //null
      // finishedAt: و //null
    );
  }
}
