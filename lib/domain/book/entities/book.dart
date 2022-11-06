import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keep_books/domain/book/validate/value_object.dart';
import 'package:keep_books/domain/core/value_objects.dart';
import 'package:keep_books/presentaion/shared/enum.dart';

part 'book.freezed.dart';

@freezed
class Book with _$Book {
  const Book._();

  factory Book({
    //book id is equal document id
    required UniqueId id,
    required BookTitle title,
    required StringSingleLine author,
    required BookNote notes,
    required StringSingleLine photoUrl,
    required StringSingleLine categories,
    required StringSingleLine publishedDate,
    required BookText description,
    required double rating,
    required int pageCount,
    required UniqueId userId,
    required BookStatus status,
    DateTime? createdAt,
    DateTime? startedAt,
    DateTime? finishedAt,
  }) = _Book;

  factory Book.empty() => Book(
        id: UniqueId(),
        title: BookTitle("Title"),
        author: StringSingleLine(""),
        notes: BookNote(""),
        photoUrl: StringSingleLine('https://images.unsplash.com/photo-1553729784-e91953dec042?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80'),
        categories: StringSingleLine(""),
        publishedDate: StringSingleLine(""),
        description: BookText("Body"),
        rating: 0.0,
        pageCount: 0,
        userId: UniqueId(),
        status: BookStatus(BookStatusEnum.notStarted.value),
        createdAt: DateTime.now(),
      );
}
