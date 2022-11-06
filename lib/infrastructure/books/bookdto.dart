import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keep_books/domain/book/entities/book.dart';
import 'package:keep_books/domain/book/validate/value_object.dart';
import 'package:keep_books/domain/core/value_objects.dart';
import 'package:keep_books/infrastructure/core/time_converter.dart';


part 'bookdto.freezed.dart';
part 'bookdto.g.dart';

@freezed
class BookDto with _$BookDto {
  const BookDto._();

  factory BookDto({
   @JsonKey(ignore: true) 
    String? id,//id can be not ignored but then i need to  rebuild books from scratch
    required String title,
    required String author,
    required String notes,
    required String photoUrl,
    required String categories,
    required String publishedDate,
    required String description,
    required double rating,
    required int pageCount,
    required String userId,
    required String status,
    //need to handle date if exist or not
    @ServerTimestampConverter()  DateTime? createdAt,
    @ServerTimestampConverter()  DateTime? startedAt,
    @ServerTimestampConverter()  DateTime? finishedAt,
  }) = _BookDto;

 ///Used Only when we create Book for the first time
  factory BookDto.fromDomain(Book book) {
    return BookDto(
      id: book.id.getOrCrash(),
      title: book.title.getOrCrash(),
      author: book.author.getOrCrash(),
      notes: book.notes.getOrCrash(),
      photoUrl: book.photoUrl.getOrCrash(),
      categories: book.categories.getOrCrash(),
      publishedDate: book.publishedDate.getOrCrash(),
      description: book.description.getOrCrash(),
      rating: book.rating,
      pageCount: book.pageCount,
      userId: book.userId.getOrCrash(),
      status: book.status.getOrCrash(),
      createdAt: book.createdAt,
      startedAt: book.startedAt,
      finishedAt: book.finishedAt ,
    );
  }


  Book toDomain() {
    return Book(
      id: UniqueId.fromUniqueString(id!),
      title: BookTitle(title),
      author: StringSingleLine(author),
      notes: BookNote(notes),
      photoUrl: StringSingleLine(photoUrl),
      categories: StringSingleLine(categories),
      publishedDate: StringSingleLine(publishedDate),
      description: BookText(description),
      rating: rating,
      pageCount: pageCount,
      userId: UniqueId.fromUniqueString(userId),
      status: BookStatus(status),
      createdAt: createdAt,
      startedAt: startedAt,
      finishedAt: finishedAt,
    );
  }

  ///Method add DocumentSnapshot.id as an id for BookDto
  factory BookDto.fromFirestore(DocumentSnapshot doc) {
    return BookDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }

  factory BookDto.fromJson(Map<String, dynamic> json) =>
      _$BookDtoFromJson(json);
}
