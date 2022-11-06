// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bookdto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookDto _$BookDtoFromJson(Map<String, dynamic> json) {
  return _BookDto.fromJson(json);
}

/// @nodoc
mixin _$BookDto {
  @JsonKey(ignore: true)
  String? get id =>
      throw _privateConstructorUsedError; //id can be not ignored but then i need to  rebuild books from scratch
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  String get categories => throw _privateConstructorUsedError;
  String get publishedDate => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get pageCount => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; //need to handle date if exist or not
  @ServerTimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  DateTime? get startedAt => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  DateTime? get finishedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookDtoCopyWith<BookDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDtoCopyWith<$Res> {
  factory $BookDtoCopyWith(BookDto value, $Res Function(BookDto) then) =
      _$BookDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String title,
      String author,
      String notes,
      String photoUrl,
      String categories,
      String publishedDate,
      String description,
      double rating,
      int pageCount,
      String userId,
      String status,
      @ServerTimestampConverter() DateTime? createdAt,
      @ServerTimestampConverter() DateTime? startedAt,
      @ServerTimestampConverter() DateTime? finishedAt});
}

/// @nodoc
class _$BookDtoCopyWithImpl<$Res> implements $BookDtoCopyWith<$Res> {
  _$BookDtoCopyWithImpl(this._value, this._then);

  final BookDto _value;
  // ignore: unused_field
  final $Res Function(BookDto) _then;

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
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as String,
      publishedDate: publishedDate == freezed
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_BookDtoCopyWith<$Res> implements $BookDtoCopyWith<$Res> {
  factory _$$_BookDtoCopyWith(
          _$_BookDto value, $Res Function(_$_BookDto) then) =
      __$$_BookDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String title,
      String author,
      String notes,
      String photoUrl,
      String categories,
      String publishedDate,
      String description,
      double rating,
      int pageCount,
      String userId,
      String status,
      @ServerTimestampConverter() DateTime? createdAt,
      @ServerTimestampConverter() DateTime? startedAt,
      @ServerTimestampConverter() DateTime? finishedAt});
}

/// @nodoc
class __$$_BookDtoCopyWithImpl<$Res> extends _$BookDtoCopyWithImpl<$Res>
    implements _$$_BookDtoCopyWith<$Res> {
  __$$_BookDtoCopyWithImpl(_$_BookDto _value, $Res Function(_$_BookDto) _then)
      : super(_value, (v) => _then(v as _$_BookDto));

  @override
  _$_BookDto get _value => super._value as _$_BookDto;

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
    return _then(_$_BookDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as String,
      publishedDate: publishedDate == freezed
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
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
@JsonSerializable()
class _$_BookDto extends _BookDto with DiagnosticableTreeMixin {
  _$_BookDto(
      {@JsonKey(ignore: true) this.id,
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
      @ServerTimestampConverter() this.createdAt,
      @ServerTimestampConverter() this.startedAt,
      @ServerTimestampConverter() this.finishedAt})
      : super._();

  factory _$_BookDto.fromJson(Map<String, dynamic> json) =>
      _$$_BookDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
//id can be not ignored but then i need to  rebuild books from scratch
  @override
  final String title;
  @override
  final String author;
  @override
  final String notes;
  @override
  final String photoUrl;
  @override
  final String categories;
  @override
  final String publishedDate;
  @override
  final String description;
  @override
  final double rating;
  @override
  final int pageCount;
  @override
  final String userId;
  @override
  final String status;
//need to handle date if exist or not
  @override
  @ServerTimestampConverter()
  final DateTime? createdAt;
  @override
  @ServerTimestampConverter()
  final DateTime? startedAt;
  @override
  @ServerTimestampConverter()
  final DateTime? finishedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookDto(id: $id, title: $title, author: $author, notes: $notes, photoUrl: $photoUrl, categories: $categories, publishedDate: $publishedDate, description: $description, rating: $rating, pageCount: $pageCount, userId: $userId, status: $status, createdAt: $createdAt, startedAt: $startedAt, finishedAt: $finishedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookDto'))
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
            other is _$_BookDto &&
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

  @JsonKey(ignore: true)
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
  _$$_BookDtoCopyWith<_$_BookDto> get copyWith =>
      __$$_BookDtoCopyWithImpl<_$_BookDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookDtoToJson(this);
  }
}

abstract class _BookDto extends BookDto {
  factory _BookDto(
      {@JsonKey(ignore: true) final String? id,
      required final String title,
      required final String author,
      required final String notes,
      required final String photoUrl,
      required final String categories,
      required final String publishedDate,
      required final String description,
      required final double rating,
      required final int pageCount,
      required final String userId,
      required final String status,
      @ServerTimestampConverter() final DateTime? createdAt,
      @ServerTimestampConverter() final DateTime? startedAt,
      @ServerTimestampConverter() final DateTime? finishedAt}) = _$_BookDto;
  _BookDto._() : super._();

  factory _BookDto.fromJson(Map<String, dynamic> json) = _$_BookDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override //id can be not ignored but then i need to  rebuild books from scratch
  String get title => throw _privateConstructorUsedError;
  @override
  String get author => throw _privateConstructorUsedError;
  @override
  String get notes => throw _privateConstructorUsedError;
  @override
  String get photoUrl => throw _privateConstructorUsedError;
  @override
  String get categories => throw _privateConstructorUsedError;
  @override
  String get publishedDate => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  double get rating => throw _privateConstructorUsedError;
  @override
  int get pageCount => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override //need to handle date if exist or not
  @ServerTimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  DateTime? get startedAt => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  DateTime? get finishedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BookDtoCopyWith<_$_BookDto> get copyWith =>
      throw _privateConstructorUsedError;
}
