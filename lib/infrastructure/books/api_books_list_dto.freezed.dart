// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_books_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiBooksListDto _$ApiBooksListDtoFromJson(Map<String, dynamic> json) {
  return _ApiBooksListDto.fromJson(json);
}

/// @nodoc
mixin _$ApiBooksListDto {
  int? get totalItems => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiBooksListDtoCopyWith<ApiBooksListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiBooksListDtoCopyWith<$Res> {
  factory $ApiBooksListDtoCopyWith(
          ApiBooksListDto value, $Res Function(ApiBooksListDto) then) =
      _$ApiBooksListDtoCopyWithImpl<$Res>;
  $Res call({int? totalItems, List<Item> items});
}

/// @nodoc
class _$ApiBooksListDtoCopyWithImpl<$Res>
    implements $ApiBooksListDtoCopyWith<$Res> {
  _$ApiBooksListDtoCopyWithImpl(this._value, this._then);

  final ApiBooksListDto _value;
  // ignore: unused_field
  final $Res Function(ApiBooksListDto) _then;

  @override
  $Res call({
    Object? totalItems = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      totalItems: totalItems == freezed
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
abstract class _$$_ApiBooksListDtoCopyWith<$Res>
    implements $ApiBooksListDtoCopyWith<$Res> {
  factory _$$_ApiBooksListDtoCopyWith(
          _$_ApiBooksListDto value, $Res Function(_$_ApiBooksListDto) then) =
      __$$_ApiBooksListDtoCopyWithImpl<$Res>;
  @override
  $Res call({int? totalItems, List<Item> items});
}

/// @nodoc
class __$$_ApiBooksListDtoCopyWithImpl<$Res>
    extends _$ApiBooksListDtoCopyWithImpl<$Res>
    implements _$$_ApiBooksListDtoCopyWith<$Res> {
  __$$_ApiBooksListDtoCopyWithImpl(
      _$_ApiBooksListDto _value, $Res Function(_$_ApiBooksListDto) _then)
      : super(_value, (v) => _then(v as _$_ApiBooksListDto));

  @override
  _$_ApiBooksListDto get _value => super._value as _$_ApiBooksListDto;

  @override
  $Res call({
    Object? totalItems = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_ApiBooksListDto(
      totalItems: totalItems == freezed
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiBooksListDto extends _ApiBooksListDto with DiagnosticableTreeMixin {
  _$_ApiBooksListDto({this.totalItems, required final List<Item> items})
      : _items = items,
        super._();

  factory _$_ApiBooksListDto.fromJson(Map<String, dynamic> json) =>
      _$$_ApiBooksListDtoFromJson(json);

  @override
  final int? totalItems;
  final List<Item> _items;
  @override
  List<Item> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiBooksListDto(totalItems: $totalItems, items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiBooksListDto'))
      ..add(DiagnosticsProperty('totalItems', totalItems))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiBooksListDto &&
            const DeepCollectionEquality()
                .equals(other.totalItems, totalItems) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalItems),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_ApiBooksListDtoCopyWith<_$_ApiBooksListDto> get copyWith =>
      __$$_ApiBooksListDtoCopyWithImpl<_$_ApiBooksListDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiBooksListDtoToJson(this);
  }
}

abstract class _ApiBooksListDto extends ApiBooksListDto {
  factory _ApiBooksListDto(
      {final int? totalItems,
      required final List<Item> items}) = _$_ApiBooksListDto;
  _ApiBooksListDto._() : super._();

  factory _ApiBooksListDto.fromJson(Map<String, dynamic> json) =
      _$_ApiBooksListDto.fromJson;

  @override
  int? get totalItems => throw _privateConstructorUsedError;
  @override
  List<Item> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ApiBooksListDtoCopyWith<_$_ApiBooksListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String? get id => throw _privateConstructorUsedError;
  VolumeInfo get volumeInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call({String? id, VolumeInfo volumeInfo});

  $VolumeInfoCopyWith<$Res> get volumeInfo;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? volumeInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      volumeInfo: volumeInfo == freezed
          ? _value.volumeInfo
          : volumeInfo // ignore: cast_nullable_to_non_nullable
              as VolumeInfo,
    ));
  }

  @override
  $VolumeInfoCopyWith<$Res> get volumeInfo {
    return $VolumeInfoCopyWith<$Res>(_value.volumeInfo, (value) {
      return _then(_value.copyWith(volumeInfo: value));
    });
  }
}

/// @nodoc
abstract class _$$_ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$_ItemCopyWith(_$_Item value, $Res Function(_$_Item) then) =
      __$$_ItemCopyWithImpl<$Res>;
  @override
  $Res call({String? id, VolumeInfo volumeInfo});

  @override
  $VolumeInfoCopyWith<$Res> get volumeInfo;
}

/// @nodoc
class __$$_ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$$_ItemCopyWith<$Res> {
  __$$_ItemCopyWithImpl(_$_Item _value, $Res Function(_$_Item) _then)
      : super(_value, (v) => _then(v as _$_Item));

  @override
  _$_Item get _value => super._value as _$_Item;

  @override
  $Res call({
    Object? id = freezed,
    Object? volumeInfo = freezed,
  }) {
    return _then(_$_Item(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      volumeInfo: volumeInfo == freezed
          ? _value.volumeInfo
          : volumeInfo // ignore: cast_nullable_to_non_nullable
              as VolumeInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item with DiagnosticableTreeMixin implements _Item {
  const _$_Item({this.id, required this.volumeInfo});

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

  @override
  final String? id;
  @override
  final VolumeInfo volumeInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Item(id: $id, volumeInfo: $volumeInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Item'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('volumeInfo', volumeInfo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Item &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.volumeInfo, volumeInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(volumeInfo));

  @JsonKey(ignore: true)
  @override
  _$$_ItemCopyWith<_$_Item> get copyWith =>
      __$$_ItemCopyWithImpl<_$_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(this);
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {final String? id, required final VolumeInfo volumeInfo}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  VolumeInfo get volumeInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCopyWith<_$_Item> get copyWith => throw _privateConstructorUsedError;
}

VolumeInfo _$VolumeInfoFromJson(Map<String, dynamic> json) {
  return _VolumeInfo.fromJson(json);
}

/// @nodoc
mixin _$VolumeInfo {
  String get title => throw _privateConstructorUsedError;
  List<String> get authors => throw _privateConstructorUsedError;
  String get publishedDate => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get pageCount => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  ImageLinks get imageLinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VolumeInfoCopyWith<VolumeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolumeInfoCopyWith<$Res> {
  factory $VolumeInfoCopyWith(
          VolumeInfo value, $Res Function(VolumeInfo) then) =
      _$VolumeInfoCopyWithImpl<$Res>;
  $Res call(
      {String title,
      List<String> authors,
      String publishedDate,
      String description,
      int pageCount,
      List<String> categories,
      ImageLinks imageLinks});

  $ImageLinksCopyWith<$Res> get imageLinks;
}

/// @nodoc
class _$VolumeInfoCopyWithImpl<$Res> implements $VolumeInfoCopyWith<$Res> {
  _$VolumeInfoCopyWithImpl(this._value, this._then);

  final VolumeInfo _value;
  // ignore: unused_field
  final $Res Function(VolumeInfo) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? authors = freezed,
    Object? publishedDate = freezed,
    Object? description = freezed,
    Object? pageCount = freezed,
    Object? categories = freezed,
    Object? imageLinks = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      authors: authors == freezed
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageLinks: imageLinks == freezed
          ? _value.imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as ImageLinks,
    ));
  }

  @override
  $ImageLinksCopyWith<$Res> get imageLinks {
    return $ImageLinksCopyWith<$Res>(_value.imageLinks, (value) {
      return _then(_value.copyWith(imageLinks: value));
    });
  }
}

/// @nodoc
abstract class _$$_VolumeInfoCopyWith<$Res>
    implements $VolumeInfoCopyWith<$Res> {
  factory _$$_VolumeInfoCopyWith(
          _$_VolumeInfo value, $Res Function(_$_VolumeInfo) then) =
      __$$_VolumeInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      List<String> authors,
      String publishedDate,
      String description,
      int pageCount,
      List<String> categories,
      ImageLinks imageLinks});

  @override
  $ImageLinksCopyWith<$Res> get imageLinks;
}

/// @nodoc
class __$$_VolumeInfoCopyWithImpl<$Res> extends _$VolumeInfoCopyWithImpl<$Res>
    implements _$$_VolumeInfoCopyWith<$Res> {
  __$$_VolumeInfoCopyWithImpl(
      _$_VolumeInfo _value, $Res Function(_$_VolumeInfo) _then)
      : super(_value, (v) => _then(v as _$_VolumeInfo));

  @override
  _$_VolumeInfo get _value => super._value as _$_VolumeInfo;

  @override
  $Res call({
    Object? title = freezed,
    Object? authors = freezed,
    Object? publishedDate = freezed,
    Object? description = freezed,
    Object? pageCount = freezed,
    Object? categories = freezed,
    Object? imageLinks = freezed,
  }) {
    return _then(_$_VolumeInfo(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      authors: authors == freezed
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      categories: categories == freezed
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageLinks: imageLinks == freezed
          ? _value.imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as ImageLinks,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VolumeInfo extends _VolumeInfo with DiagnosticableTreeMixin {
  _$_VolumeInfo(
      {required this.title,
      final List<String> authors = const ["N/A"],
      this.publishedDate = 'N/A',
      this.description = 'N/A',
      this.pageCount = 0,
      final List<String> categories = const ["N/A"],
      this.imageLinks = const ImageLinks(
          thumbnail:
              'https://images.unsplash.com/photo-1553729784-e91953dec042?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80')})
      : _authors = authors,
        _categories = categories,
        super._();

  factory _$_VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$$_VolumeInfoFromJson(json);

  @override
  final String title;
  final List<String> _authors;
  @override
  @JsonKey()
  List<String> get authors {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authors);
  }

  @override
  @JsonKey()
  final String publishedDate;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final int pageCount;
  final List<String> _categories;
  @override
  @JsonKey()
  List<String> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final ImageLinks imageLinks;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VolumeInfo(title: $title, authors: $authors, publishedDate: $publishedDate, description: $description, pageCount: $pageCount, categories: $categories, imageLinks: $imageLinks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VolumeInfo'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('authors', authors))
      ..add(DiagnosticsProperty('publishedDate', publishedDate))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('pageCount', pageCount))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('imageLinks', imageLinks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VolumeInfo &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            const DeepCollectionEquality()
                .equals(other.publishedDate, publishedDate) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.pageCount, pageCount) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other.imageLinks, imageLinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(_authors),
      const DeepCollectionEquality().hash(publishedDate),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(pageCount),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(imageLinks));

  @JsonKey(ignore: true)
  @override
  _$$_VolumeInfoCopyWith<_$_VolumeInfo> get copyWith =>
      __$$_VolumeInfoCopyWithImpl<_$_VolumeInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VolumeInfoToJson(this);
  }
}

abstract class _VolumeInfo extends VolumeInfo {
  factory _VolumeInfo(
      {required final String title,
      final List<String> authors,
      final String publishedDate,
      final String description,
      final int pageCount,
      final List<String> categories,
      final ImageLinks imageLinks}) = _$_VolumeInfo;
  _VolumeInfo._() : super._();

  factory _VolumeInfo.fromJson(Map<String, dynamic> json) =
      _$_VolumeInfo.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  List<String> get authors => throw _privateConstructorUsedError;
  @override
  String get publishedDate => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  int get pageCount => throw _privateConstructorUsedError;
  @override
  List<String> get categories => throw _privateConstructorUsedError;
  @override
  ImageLinks get imageLinks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VolumeInfoCopyWith<_$_VolumeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageLinks _$ImageLinksFromJson(Map<String, dynamic> json) {
  return _ImageLinks.fromJson(json);
}

/// @nodoc
mixin _$ImageLinks {
//  @Default('') String smallThumbnail,
  String get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageLinksCopyWith<ImageLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageLinksCopyWith<$Res> {
  factory $ImageLinksCopyWith(
          ImageLinks value, $Res Function(ImageLinks) then) =
      _$ImageLinksCopyWithImpl<$Res>;
  $Res call({String thumbnail});
}

/// @nodoc
class _$ImageLinksCopyWithImpl<$Res> implements $ImageLinksCopyWith<$Res> {
  _$ImageLinksCopyWithImpl(this._value, this._then);

  final ImageLinks _value;
  // ignore: unused_field
  final $Res Function(ImageLinks) _then;

  @override
  $Res call({
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ImageLinksCopyWith<$Res>
    implements $ImageLinksCopyWith<$Res> {
  factory _$$_ImageLinksCopyWith(
          _$_ImageLinks value, $Res Function(_$_ImageLinks) then) =
      __$$_ImageLinksCopyWithImpl<$Res>;
  @override
  $Res call({String thumbnail});
}

/// @nodoc
class __$$_ImageLinksCopyWithImpl<$Res> extends _$ImageLinksCopyWithImpl<$Res>
    implements _$$_ImageLinksCopyWith<$Res> {
  __$$_ImageLinksCopyWithImpl(
      _$_ImageLinks _value, $Res Function(_$_ImageLinks) _then)
      : super(_value, (v) => _then(v as _$_ImageLinks));

  @override
  _$_ImageLinks get _value => super._value as _$_ImageLinks;

  @override
  $Res call({
    Object? thumbnail = freezed,
  }) {
    return _then(_$_ImageLinks(
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageLinks with DiagnosticableTreeMixin implements _ImageLinks {
  const _$_ImageLinks({this.thumbnail = ''});

  factory _$_ImageLinks.fromJson(Map<String, dynamic> json) =>
      _$$_ImageLinksFromJson(json);

//  @Default('') String smallThumbnail,
  @override
  @JsonKey()
  final String thumbnail;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageLinks(thumbnail: $thumbnail)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageLinks'))
      ..add(DiagnosticsProperty('thumbnail', thumbnail));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageLinks &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(thumbnail));

  @JsonKey(ignore: true)
  @override
  _$$_ImageLinksCopyWith<_$_ImageLinks> get copyWith =>
      __$$_ImageLinksCopyWithImpl<_$_ImageLinks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageLinksToJson(this);
  }
}

abstract class _ImageLinks implements ImageLinks {
  const factory _ImageLinks({final String thumbnail}) = _$_ImageLinks;

  factory _ImageLinks.fromJson(Map<String, dynamic> json) =
      _$_ImageLinks.fromJson;

  @override //  @Default('') String smallThumbnail,
  String get thumbnail => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ImageLinksCopyWith<_$_ImageLinks> get copyWith =>
      throw _privateConstructorUsedError;
}
