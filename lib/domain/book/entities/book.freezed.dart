// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Book {
//book id is equal document id
  UniqueId get id => throw _privateConstructorUsedError;
  BookTitle get title => throw _privateConstructorUsedError;
  StringSingleLine get author => throw _privateConstructorUsedError;
  BookNote get notes => throw _privateConstructorUsedError;
  StringSingleLine get photoUrl => throw _privateConstructorUsedError;
  StringSingleLine get categories => throw _privateConstructorUsedError;
  StringSingleLine get publishedDate => throw _privateConstructorUsedError;
  BookText get description => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get pageCount => throw _privateConstructorUsedError;
  UniqueId get userId => throw _privateConstructorUsedError;
  BookStatus get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get startedAt => throw _privateConstructorUsedError;
  DateTime? get finishedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      BookTitle title,
      StringSingleLine author,
      BookNote notes,
      StringSingleLine photoUrl,
      StringSingleLine categories,
      StringSingleLine publishedDate,
      BookText description,
      double rating,
      int pageCount,
      UniqueId userId,
      BookStatus status,
      DateTime? createdAt,
      DateTime? startedAt,
      DateTime? finishedAt});
}

/// @nodoc
class _$BookCopyWithImpl<$Res> implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  final Book _value;
  // ignore: unused_field
  final $Res Function(Book) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? notes = freezed,
    Object? photoUrl = freezed,
    Object? categories = freezed,
    Object? publishedDate = freezed,
    Object? description = freezed,
    Object? rating = freezed,
    Object? pageCount = freezed,
    Object? userId = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? startedAt = freezed,
    Object? finishedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as BookTitle,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as BookNote,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      publishedDate: publishedDate == freezed
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BookText,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      pageCount: pageCount == freezed
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookStatus,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishedAt: finishedAt == freezed
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$_BookCopyWith(_$_Book value, $Res Function(_$_Book) then) =
      __$$_BookCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      BookTitle title,
      StringSingleLine author,
      BookNote notes,
      StringSingleLine photoUrl,
      StringSingleLine categories,
      StringSingleLine publishedDate,
      BookText description,
      double rating,
      int pageCount,
      UniqueId userId,
      BookStatus status,
      DateTime? createdAt,
      DateTime? startedAt,
      DateTime? finishedAt});
}

/// @nodoc
class __$$_BookCopyWithImpl<$Res> extends _$BookCopyWithImpl<$Res>
    implements _$$_BookCopyWith<$Res> {
  __$$_BookCopyWithImpl(_$_Book _value, $Res Function(_$_Book) _then)
      : super(_value, (v) => _then(v as _$_Book));

  @override
  _$_Book get _value => super._value as _$_Book;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? notes = freezed,
    Object? photoUrl = freezed,
    Object? categories = freezed,
    Object? publishedDate = freezed,
    Object? description = freezed,
    Object? rating = freezed,
    Object? pageCount = freezed,
    Object? userId = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? startedAt = freezed,
    Object? finishedAt = freezed,
  }) {
    return _then(_$_Book(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as BookTitle,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as BookNote,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      publishedDate: publishedDate == freezed
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BookText,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      pageCount: pageCount == freezed
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookStatus,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishedAt: finishedAt == freezed
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_Book extends _Book with DiagnosticableTreeMixin {
  _$_Book(
      {required this.id,
      required this.title,
      required this.author,
      required this.notes,
      required this.photoUrl,
      required this.categories,
      required this.publishedDate,
      required this.description,
      required this.rating,
      required this.pageCount,
      required this.userId,
      required this.status,
      this.createdAt,
      this.startedAt,
      this.finishedAt})
      : super._();

//book id is equal document id
  @override
  final UniqueId id;
  @override
  final BookTitle title;
  @override
  final StringSingleLine author;
  @override
  final BookNote notes;
  @override
  final StringSingleLine photoUrl;
  @override
  final StringSingleLine categories;
  @override
  final StringSingleLine publishedDate;
  @override
  final BookText description;
  @override
  final double rating;
  @override
  final int pageCount;
  @override
  final UniqueId userId;
  @override
  final BookStatus status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? finishedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Book(id: $id, title: $title, author: $author, notes: $notes, photoUrl: $photoUrl, categories: $categories, publishedDate: $publishedDate, description: $description, rating: $rating, pageCount: $pageCount, userId: $userId, status: $status, createdAt: $createdAt, startedAt: $startedAt, finishedAt: $finishedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Book'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('author', author))
      ..add(DiagnosticsProperty('notes', notes))
      ..add(DiagnosticsProperty('photoUrl', photoUrl))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('publishedDate', publishedDate))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('pageCount', pageCount))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('startedAt', startedAt))
      ..add(DiagnosticsProperty('finishedAt', finishedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Book &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.notes, notes) &&
            const DeepCollectionEquality().equals(other.photoUrl, photoUrl) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality()
                .equals(other.publishedDate, publishedDate) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.pageCount, pageCount) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.startedAt, startedAt) &&
            const DeepCollectionEquality()
                .equals(other.finishedAt, finishedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(notes),
      const DeepCollectionEquality().hash(photoUrl),
      const DeepCollectionEquality().hash(categories),
      const DeepCollectionEquality().hash(publishedDate),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(pageCount),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(startedAt),
      const DeepCollectionEquality().hash(finishedAt));

  @JsonKey(ignore: true)
  @override
  _$$_BookCopyWith<_$_Book> get copyWith =>
      __$$_BookCopyWithImpl<_$_Book>(this, _$identity);
}

abstract class _Book extends Book {
  factory _Book(
      {required final UniqueId id,
      required final BookTitle title,
      required final StringSingleLine author,
      required final BookNote notes,
      required final StringSingleLine photoUrl,
      required final StringSingleLine categories,
      required final StringSingleLine publishedDate,
      required final BookText description,
      required final double rating,
      required final int pageCount,
      required final UniqueId userId,
      required final BookStatus status,
      final DateTime? createdAt,
      final DateTime? startedAt,
      final DateTime? finishedAt}) = _$_Book;
  _Book._() : super._();

  @override //book id is equal document id
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  BookTitle get title => throw _privateConstructorUsedError;
  @override
  StringSingleLine get author => throw _privateConstructorUsedError;
  @override
  BookNote get notes => throw _privateConstructorUsedError;
  @override
  StringSingleLine get photoUrl => throw _privateConstructorUsedError;
  @override
  StringSingleLine get categories => throw _privateConstructorUsedError;
  @override
  StringSingleLine get publishedDate => throw _privateConstructorUsedError;
  @override
  BookText get description => throw _privateConstructorUsedError;
  @override
  double get rating => throw _privateConstructorUsedError;
  @override
  int get pageCount => throw _privateConstructorUsedError;
  @override
  UniqueId get userId => throw _privateConstructorUsedError;
  @override
  BookStatus get status => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime? get startedAt => throw _privateConstructorUsedError;
  @override
  DateTime? get finishedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BookCopyWith<_$_Book> get copyWith => throw _privateConstructorUsedError;
}
