// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_books_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiBooksListDto _$$_ApiBooksListDtoFromJson(Map<String, dynamic> json) =>
    _$_ApiBooksListDto(
      totalItems: json['totalItems'] as int?,
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ApiBooksListDtoToJson(_$_ApiBooksListDto instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      id: json['id'] as String?,
      volumeInfo:
          VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'id': instance.id,
      'volumeInfo': instance.volumeInfo.toJson(),
    };

_$_VolumeInfo _$$_VolumeInfoFromJson(Map<String, dynamic> json) =>
    _$_VolumeInfo(
      title: json['title'] as String,
      authors: (json['authors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const ["N/A"],
      publishedDate: json['publishedDate'] as String? ?? 'N/A',
      description: json['description'] as String? ?? 'N/A',
      pageCount: json['pageCount'] as int? ?? 0,
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const ["N/A"],
      imageLinks: json['imageLinks'] == null
          ? const ImageLinks(
              thumbnail:
                  'https://images.unsplash.com/photo-1553729784-e91953dec042?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80')
          : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VolumeInfoToJson(_$_VolumeInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'authors': instance.authors,
      'publishedDate': instance.publishedDate,
      'description': instance.description,
      'pageCount': instance.pageCount,
      'categories': instance.categories,
      'imageLinks': instance.imageLinks.toJson(),
    };

_$_ImageLinks _$$_ImageLinksFromJson(Map<String, dynamic> json) =>
    _$_ImageLinks(
      thumbnail: json['thumbnail'] as String? ?? '',
    );

Map<String, dynamic> _$$_ImageLinksToJson(_$_ImageLinks instance) =>
    <String, dynamic>{
      'thumbnail': instance.thumbnail,
    };
