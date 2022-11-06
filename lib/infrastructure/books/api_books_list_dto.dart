import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/book/entities/api_books_list.dart';

part 'api_books_list_dto.freezed.dart';
part 'api_books_list_dto.g.dart';

@freezed
class ApiBooksListDto with _$ApiBooksListDto {
  const ApiBooksListDto._();

  factory ApiBooksListDto({
    int? totalItems,
    required List<Item> items,
  }) = _ApiBooksListDto;

  ApiBooksList toDomain() {
    //I got weird error when I tried to use todomain (unexpectedly found a null value when use search keyward "Flutter")
    return ApiBooksList(
      totalItems: totalItems,
      apiBooks: items
          .map((item) => item.volumeInfo.toDomain())
          .toList()
          .toImmutableList(),
    );
  }

  factory ApiBooksListDto.fromJson(Map<String, dynamic> json) =>
      _$ApiBooksListDtoFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    String? id,
    required VolumeInfo volumeInfo,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class VolumeInfo with _$VolumeInfo {
  const VolumeInfo._();

  factory VolumeInfo({
    required String title,
    @Default(["N/A"]) List<String> authors,
    @Default('N/A') String publishedDate,
    @Default('N/A') String description,
    @Default(0) int pageCount,
    @Default(["N/A"]) List<String> categories,
    @Default(ImageLinks(
        thumbnail:
            'https://images.unsplash.com/photo-1553729784-e91953dec042?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80'))
        ImageLinks imageLinks,
  }) = _VolumeInfo;

  ApiBook toDomain() {
    return ApiBook(
      title: title,
      authors: authors.join(', '),
      thumbNail: imageLinks.thumbnail,
      categories: categories.join(', '),
      publishedDate: publishedDate.toString(),
      description: description,
      pageCount: pageCount,
    );
  }

  factory VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$VolumeInfoFromJson(json);
}

@freezed
class ImageLinks with _$ImageLinks {
  const factory ImageLinks({
//  @Default('') String smallThumbnail,
    @Default('') String thumbnail,
  }) = _ImageLinks;

  factory ImageLinks.fromJson(Map<String, dynamic> json) =>
      _$ImageLinksFromJson(json);
}
