// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_books_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiBooksList {
  int? get totalItems => throw _privateConstructorUsedError;
  KtList<ApiBook> get apiBooks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiBooksListCopyWith<ApiBooksList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiBooksListCopyWith<$Res> {
  factory $ApiBooksListCopyWith(
          ApiBooksList value, $Res Function(ApiBooksList) then) =
      _$ApiBooksListCopyWithImpl<$Res>;
  $Res call({int? totalItems, KtList<ApiBook> apiBooks});
}

/// @nodoc
class _$ApiBooksListCopyWithImpl<$Res> implements $ApiBooksListCopyWith<$Res> {
  _$ApiBooksListCopyWithImpl(this._value, this._then);

  final ApiBooksList _value;
  // ignore: unused_field
  final $Res Function(ApiBooksList) _then;

  @override
  $Res call({
    Object? totalItems = freezed,
    Object? apiBooks = freezed,
  }) {
    return _then(_value.copyWith(
      totalItems: totalItems == freezed
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      apiBooks: apiBooks == freezed
          ? _value.apiBooks
          : apiBooks // ignore: cast_nullable_to_non_nullable
              as KtList<ApiBook>,
    ));
  }
}

/// @nodoc
abstract class _$$_ApiBooksListCopyWith<$Res>
    implements $ApiBooksListCopyWith<$Res> {
  factory _$$_ApiBooksListCopyWith(
          _$_ApiBooksList value, $Res Function(_$_ApiBooksList) then) =
      __$$_ApiBooksListCopyWithImpl<$Res>;
  @override
  $Res call({int? totalItems, KtList<ApiBook> apiBooks});
}

/// @nodoc
class __$$_ApiBooksListCopyWithImpl<$Res>
    extends _$ApiBooksListCopyWithImpl<$Res>
    implements _$$_ApiBooksListCopyWith<$Res> {
  __$$_ApiBooksListCopyWithImpl(
      _$_ApiBooksList _value, $Res Function(_$_ApiBooksList) _then)
      : super(_value, (v) => _then(v as _$_ApiBooksList));

  @override
  _$_ApiBooksList get _value => super._value as _$_ApiBooksList;

  @override
  $Res call({
    Object? totalItems = freezed,
    Object? apiBooks = freezed,
  }) {
    return _then(_$_ApiBooksList(
      totalItems: totalItems == freezed
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      apiBooks: apiBooks == freezed
          ? _value.apiBooks
          : apiBooks // ignore: cast_nullable_to_non_nullable
              as KtList<ApiBook>,
    ));
  }
}

/// @nodoc

class _$_ApiBooksList extends _ApiBooksList with DiagnosticableTreeMixin {
  _$_ApiBooksList({this.totalItems, required this.apiBooks}) : super._();

  @override
  final int? totalItems;
  @override
  final KtList<ApiBook> apiBooks;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiBooksList(totalItems: $totalItems, apiBooks: $apiBooks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiBooksList'))
      ..add(DiagnosticsProperty('totalItems', totalItems))
      ..add(DiagnosticsProperty('apiBooks', apiBooks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiBooksList &&
            const DeepCollectionEquality()
                .equals(other.totalItems, totalItems) &&
            const DeepCollectionEquality().equals(other.apiBooks, apiBooks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalItems),
      const DeepCollectionEquality().hash(apiBooks));

  @JsonKey(ignore: true)
  @override
  _$$_ApiBooksListCopyWith<_$_ApiBooksList> get copyWith =>
      __$$_ApiBooksListCopyWithImpl<_$_ApiBooksList>(this, _$identity);
}

abstract class _ApiBooksList extends ApiBooksList {
  factory _ApiBooksList(
      {final int? totalItems,
      required final KtList<ApiBook> apiBooks}) = _$_ApiBooksList;
  _ApiBooksList._() : super._();

  @override
  int? get totalItems => throw _privateConstructorUsedError;
  @override
  KtList<ApiBook> get apiBooks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ApiBooksListCopyWith<_$_ApiBooksList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ApiBook {
  String get title => throw _privateConstructorUsedError;
  String get authors => throw _privateConstructorUsedError;
  String get thumbNail => throw _privateConstructorUsedError;
  String get categories => throw _privateConstructorUsedError;
  String get publishedDate => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get pageCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiBookCopyWith<ApiBook> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiBookCopyWith<$Res> {
  factory $ApiBookCopyWith(ApiBook value, $Res Function(ApiBook) then) =
      _$ApiBookCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String authors,
      String thumbNail,
      String categories,
      String publishedDate,
      String description,
      int pageCount});
}

/// @nodoc
class _$ApiBookCopyWithImpl<$Res> implements $ApiBookCopyWith<$Res> {
  _$ApiBookCopyWithImpl(this._value, this._then);

  final ApiBook _value;
  // ignore: unused_field
  final $Res Function(ApiBook) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? authors = freezed,
    Object? thumbNail = freezed,
    Object? categories = freezed,
    Object? publishedDate = freezed,
    Object? description = freezed,
    Object? pageCount = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      authors: authors == freezed
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as String,
      thumbNail: thumbNail == freezed
          ? _value.thumbNail
          : thumbNail // ignore: cast_nullable_to_non_nullable
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
      pageCount: pageCount == freezed
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ApiBookCopyWith<$Res> implements $ApiBookCopyWith<$Res> {
  factory _$$_ApiBookCopyWith(
          _$_ApiBook value, $Res Function(_$_ApiBook) then) =
      __$$_ApiBookCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String authors,
      String thumbNail,
      String categories,
      String publishedDate,
      String description,
      int pageCount});
}

/// @nodoc
class __$$_ApiBookCopyWithImpl<$Res> extends _$ApiBookCopyWithImpl<$Res>
    implements _$$_ApiBookCopyWith<$Res> {
  __$$_ApiBookCopyWithImpl(_$_ApiBook _value, $Res Function(_$_ApiBook) _then)
      : super(_value, (v) => _then(v as _$_ApiBook));

  @override
  _$_ApiBook get _value => super._value as _$_ApiBook;

  @override
  $Res call({
    Object? title = freezed,
    Object? authors = freezed,
    Object? thumbNail = freezed,
    Object? categories = freezed,
    Object? publishedDate = freezed,
    Object? description = freezed,
    Object? pageCount = freezed,
  }) {
    return _then(_$_ApiBook(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      authors: authors == freezed
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as String,
      thumbNail: thumbNail == freezed
          ? _value.thumbNail
          : thumbNail // ignore: cast_nullable_to_non_nullable
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
      pageCount: pageCount == freezed
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ApiBook extends _ApiBook with DiagnosticableTreeMixin {
  _$_ApiBook(
      {required this.title,
      required this.authors,
      required this.thumbNail,
      required this.categories,
      required this.publishedDate,
      required this.description,
      required this.pageCount})
      : super._();

  @override
  final String title;
  @override
  final String authors;
  @override
  final String thumbNail;
  @override
  final String categories;
  @override
  final String publishedDate;
  @override
  final String description;
  @override
  final int pageCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiBook(title: $title, authors: $authors, thumbNail: $thumbNail, categories: $categories, publishedDate: $publishedDate, description: $description, pageCount: $pageCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiBook'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('authors', authors))
      ..add(DiagnosticsProperty('thumbNail', thumbNail))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('publishedDate', publishedDate))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('pageCount', pageCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiBook &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.authors, authors) &&
            const DeepCollectionEquality().equals(other.thumbNail, thumbNail) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality()
                .equals(other.publishedDate, publishedDate) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.pageCount, pageCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(authors),
      const DeepCollectionEquality().hash(thumbNail),
      const DeepCollectionEquality().hash(categories),
      const DeepCollectionEquality().hash(publishedDate),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(pageCount));

  @JsonKey(ignore: true)
  @override
  _$$_ApiBookCopyWith<_$_ApiBook> get copyWith =>
      __$$_ApiBookCopyWithImpl<_$_ApiBook>(this, _$identity);
}

abstract class _ApiBook extends ApiBook {
  factory _ApiBook(
      {required final String title,
      required final String authors,
      required final String thumbNail,
      required final String categories,
      required final String publishedDate,
      required final String description,
      required final int pageCount}) = _$_ApiBook;
  _ApiBook._() : super._();

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get authors => throw _privateConstructorUsedError;
  @override
  String get thumbNail => throw _privateConstructorUsedError;
  @override
  String get categories => throw _privateConstructorUsedError;
  @override
  String get publishedDate => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  int get pageCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ApiBookCopyWith<_$_ApiBook> get copyWith =>
      throw _privateConstructorUsedError;
}
