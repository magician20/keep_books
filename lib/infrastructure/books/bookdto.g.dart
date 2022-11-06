// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookdto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookDto _$$_BookDtoFromJson(Map<String, dynamic> json) => _$_BookDto(
      title: json['title'] as String,
      author: json['author'] as String,
      notes: json['notes'] as String,
      photoUrl: json['photoUrl'] as String,
      categories: json['categories'] as String,
      publishedDate: json['publishedDate'] as String,
      description: json['description'] as String,
      rating: (json['rating'] as num).toDouble(),
      pageCount: json['pageCount'] as int,
      userId: json['userId'] as String,
      status: json['status'] as String,
      createdAt: const ServerTimestampConverter()
          .fromJson(json['createdAt'] as Timestamp?),
      startedAt: const ServerTimestampConverter()
          .fromJson(json['startedAt'] as Timestamp?),
      finishedAt: const ServerTimestampConverter()
          .fromJson(json['finishedAt'] as Timestamp?),
    );

Map<String, dynamic> _$$_BookDtoToJson(_$_BookDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'notes': instance.notes,
      'photoUrl': instance.photoUrl,
      'categories': instance.categories,
      'publishedDate': instance.publishedDate,
      'description': instance.description,
      'rating': instance.rating,
      'pageCount': instance.pageCount,
      'userId': instance.userId,
      'status': instance.status,
      'createdAt': const ServerTimestampConverter().toJson(instance.createdAt),
      'startedAt': const ServerTimestampConverter().toJson(instance.startedAt),
      'finishedAt':
          const ServerTimestampConverter().toJson(instance.finishedAt),
    };
