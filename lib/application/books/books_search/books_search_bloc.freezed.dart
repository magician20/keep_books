// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'books_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BooksSearchState {
  List<ApiBook>? get apiBooksList => throw _privateConstructorUsedError;
  bool? get isFirstFetch => throw _privateConstructorUsedError;
  BooksSearchStatus get booksSearchStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BooksSearchStateCopyWith<BooksSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksSearchStateCopyWith<$Res> {
  factory $BooksSearchStateCopyWith(
          BooksSearchState value, $Res Function(BooksSearchState) then) =
      _$BooksSearchStateCopyWithImpl<$Res>;
  $Res call(
      {List<ApiBook>? apiBooksList,
      bool? isFirstFetch,
      BooksSearchStatus booksSearchStatus});
}

/// @nodoc
class _$BooksSearchStateCopyWithImpl<$Res>
    implements $BooksSearchStateCopyWith<$Res> {
  _$BooksSearchStateCopyWithImpl(this._value, this._then);

  final BooksSearchState _value;
  // ignore: unused_field
  final $Res Function(BooksSearchState) _then;

  @override
  $Res call({
    Object? apiBooksList = freezed,
    Object? isFirstFetch = freezed,
    Object? booksSearchStatus = freezed,
  }) {
    return _then(_value.copyWith(
      apiBooksList: apiBooksList == freezed
          ? _value.apiBooksList
          : apiBooksList // ignore: cast_nullable_to_non_nullable
              as List<ApiBook>?,
      isFirstFetch: isFirstFetch == freezed
          ? _value.isFirstFetch
          : isFirstFetch // ignore: cast_nullable_to_non_nullable
              as bool?,
      booksSearchStatus: booksSearchStatus == freezed
          ? _value.booksSearchStatus
          : booksSearchStatus // ignore: cast_nullable_to_non_nullable
              as BooksSearchStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_BooksSearchStateCopyWith<$Res>
    implements $BooksSearchStateCopyWith<$Res> {
  factory _$$_BooksSearchStateCopyWith(
          _$_BooksSearchState value, $Res Function(_$_BooksSearchState) then) =
      __$$_BooksSearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ApiBook>? apiBooksList,
      bool? isFirstFetch,
      BooksSearchStatus booksSearchStatus});
}

/// @nodoc
class __$$_BooksSearchStateCopyWithImpl<$Res>
    extends _$BooksSearchStateCopyWithImpl<$Res>
    implements _$$_BooksSearchStateCopyWith<$Res> {
  __$$_BooksSearchStateCopyWithImpl(
      _$_BooksSearchState _value, $Res Function(_$_BooksSearchState) _then)
      : super(_value, (v) => _then(v as _$_BooksSearchState));

  @override
  _$_BooksSearchState get _value => super._value as _$_BooksSearchState;

  @override
  $Res call({
    Object? apiBooksList = freezed,
    Object? isFirstFetch = freezed,
    Object? booksSearchStatus = freezed,
  }) {
    return _then(_$_BooksSearchState(
      apiBooksList: apiBooksList == freezed
          ? _value._apiBooksList
          : apiBooksList // ignore: cast_nullable_to_non_nullable
              as List<ApiBook>?,
      isFirstFetch: isFirstFetch == freezed
          ? _value.isFirstFetch
          : isFirstFetch // ignore: cast_nullable_to_non_nullable
              as bool?,
      booksSearchStatus: booksSearchStatus == freezed
          ? _value.booksSearchStatus
          : booksSearchStatus // ignore: cast_nullable_to_non_nullable
              as BooksSearchStatus,
    ));
  }
}

/// @nodoc

class _$_BooksSearchState implements _BooksSearchState {
  const _$_BooksSearchState(
      {final List<ApiBook>? apiBooksList,
      this.isFirstFetch,
      required this.booksSearchStatus})
      : _apiBooksList = apiBooksList;

  final List<ApiBook>? _apiBooksList;
  @override
  List<ApiBook>? get apiBooksList {
    final value = _apiBooksList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isFirstFetch;
  @override
  final BooksSearchStatus booksSearchStatus;

  @override
  String toString() {
    return 'BooksSearchState(apiBooksList: $apiBooksList, isFirstFetch: $isFirstFetch, booksSearchStatus: $booksSearchStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BooksSearchState &&
            const DeepCollectionEquality()
                .equals(other._apiBooksList, _apiBooksList) &&
            const DeepCollectionEquality()
                .equals(other.isFirstFetch, isFirstFetch) &&
            const DeepCollectionEquality()
                .equals(other.booksSearchStatus, booksSearchStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_apiBooksList),
      const DeepCollectionEquality().hash(isFirstFetch),
      const DeepCollectionEquality().hash(booksSearchStatus));

  @JsonKey(ignore: true)
  @override
  _$$_BooksSearchStateCopyWith<_$_BooksSearchState> get copyWith =>
      __$$_BooksSearchStateCopyWithImpl<_$_BooksSearchState>(this, _$identity);
}

abstract class _BooksSearchState implements BooksSearchState {
  const factory _BooksSearchState(
          {final List<ApiBook>? apiBooksList,
          final bool? isFirstFetch,
          required final BooksSearchStatus booksSearchStatus}) =
      _$_BooksSearchState;

  @override
  List<ApiBook>? get apiBooksList => throw _privateConstructorUsedError;
  @override
  bool? get isFirstFetch => throw _privateConstructorUsedError;
  @override
  BooksSearchStatus get booksSearchStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BooksSearchStateCopyWith<_$_BooksSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BooksSearchEvent {
  bool get isFirstFetch => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, bool isFirstFetch) startFetchBooks,
    required TResult Function(bool isFirstFetch) nextFetchBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query, bool isFirstFetch)? startFetchBooks,
    TResult Function(bool isFirstFetch)? nextFetchBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, bool isFirstFetch)? startFetchBooks,
    TResult Function(bool isFirstFetch)? nextFetchBooks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartFetchBooks value) startFetchBooks,
    required TResult Function(_NextFetchBooks value) nextFetchBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartFetchBooks value)? startFetchBooks,
    TResult Function(_NextFetchBooks value)? nextFetchBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartFetchBooks value)? startFetchBooks,
    TResult Function(_NextFetchBooks value)? nextFetchBooks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BooksSearchEventCopyWith<BooksSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksSearchEventCopyWith<$Res> {
  factory $BooksSearchEventCopyWith(
          BooksSearchEvent value, $Res Function(BooksSearchEvent) then) =
      _$BooksSearchEventCopyWithImpl<$Res>;
  $Res call({bool isFirstFetch});
}

/// @nodoc
class _$BooksSearchEventCopyWithImpl<$Res>
    implements $BooksSearchEventCopyWith<$Res> {
  _$BooksSearchEventCopyWithImpl(this._value, this._then);

  final BooksSearchEvent _value;
  // ignore: unused_field
  final $Res Function(BooksSearchEvent) _then;

  @override
  $Res call({
    Object? isFirstFetch = freezed,
  }) {
    return _then(_value.copyWith(
      isFirstFetch: isFirstFetch == freezed
          ? _value.isFirstFetch
          : isFirstFetch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_StartFetchBooksCopyWith<$Res>
    implements $BooksSearchEventCopyWith<$Res> {
  factory _$$_StartFetchBooksCopyWith(
          _$_StartFetchBooks value, $Res Function(_$_StartFetchBooks) then) =
      __$$_StartFetchBooksCopyWithImpl<$Res>;
  @override
  $Res call({String query, bool isFirstFetch});
}

/// @nodoc
class __$$_StartFetchBooksCopyWithImpl<$Res>
    extends _$BooksSearchEventCopyWithImpl<$Res>
    implements _$$_StartFetchBooksCopyWith<$Res> {
  __$$_StartFetchBooksCopyWithImpl(
      _$_StartFetchBooks _value, $Res Function(_$_StartFetchBooks) _then)
      : super(_value, (v) => _then(v as _$_StartFetchBooks));

  @override
  _$_StartFetchBooks get _value => super._value as _$_StartFetchBooks;

  @override
  $Res call({
    Object? query = freezed,
    Object? isFirstFetch = freezed,
  }) {
    return _then(_$_StartFetchBooks(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      isFirstFetch == freezed
          ? _value.isFirstFetch
          : isFirstFetch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_StartFetchBooks implements _StartFetchBooks {
  const _$_StartFetchBooks(this.query, this.isFirstFetch);

  @override
  final String query;
  @override
  final bool isFirstFetch;

  @override
  String toString() {
    return 'BooksSearchEvent.startFetchBooks(query: $query, isFirstFetch: $isFirstFetch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartFetchBooks &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality()
                .equals(other.isFirstFetch, isFirstFetch));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(isFirstFetch));

  @JsonKey(ignore: true)
  @override
  _$$_StartFetchBooksCopyWith<_$_StartFetchBooks> get copyWith =>
      __$$_StartFetchBooksCopyWithImpl<_$_StartFetchBooks>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, bool isFirstFetch) startFetchBooks,
    required TResult Function(bool isFirstFetch) nextFetchBooks,
  }) {
    return startFetchBooks(query, isFirstFetch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query, bool isFirstFetch)? startFetchBooks,
    TResult Function(bool isFirstFetch)? nextFetchBooks,
  }) {
    return startFetchBooks?.call(query, isFirstFetch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, bool isFirstFetch)? startFetchBooks,
    TResult Function(bool isFirstFetch)? nextFetchBooks,
    required TResult orElse(),
  }) {
    if (startFetchBooks != null) {
      return startFetchBooks(query, isFirstFetch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartFetchBooks value) startFetchBooks,
    required TResult Function(_NextFetchBooks value) nextFetchBooks,
  }) {
    return startFetchBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartFetchBooks value)? startFetchBooks,
    TResult Function(_NextFetchBooks value)? nextFetchBooks,
  }) {
    return startFetchBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartFetchBooks value)? startFetchBooks,
    TResult Function(_NextFetchBooks value)? nextFetchBooks,
    required TResult orElse(),
  }) {
    if (startFetchBooks != null) {
      return startFetchBooks(this);
    }
    return orElse();
  }
}

abstract class _StartFetchBooks implements BooksSearchEvent {
  const factory _StartFetchBooks(final String query, final bool isFirstFetch) =
      _$_StartFetchBooks;

  String get query => throw _privateConstructorUsedError;
  @override
  bool get isFirstFetch => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StartFetchBooksCopyWith<_$_StartFetchBooks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NextFetchBooksCopyWith<$Res>
    implements $BooksSearchEventCopyWith<$Res> {
  factory _$$_NextFetchBooksCopyWith(
          _$_NextFetchBooks value, $Res Function(_$_NextFetchBooks) then) =
      __$$_NextFetchBooksCopyWithImpl<$Res>;
  @override
  $Res call({bool isFirstFetch});
}

/// @nodoc
class __$$_NextFetchBooksCopyWithImpl<$Res>
    extends _$BooksSearchEventCopyWithImpl<$Res>
    implements _$$_NextFetchBooksCopyWith<$Res> {
  __$$_NextFetchBooksCopyWithImpl(
      _$_NextFetchBooks _value, $Res Function(_$_NextFetchBooks) _then)
      : super(_value, (v) => _then(v as _$_NextFetchBooks));

  @override
  _$_NextFetchBooks get _value => super._value as _$_NextFetchBooks;

  @override
  $Res call({
    Object? isFirstFetch = freezed,
  }) {
    return _then(_$_NextFetchBooks(
      isFirstFetch == freezed
          ? _value.isFirstFetch
          : isFirstFetch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NextFetchBooks implements _NextFetchBooks {
  const _$_NextFetchBooks(this.isFirstFetch);

  @override
  final bool isFirstFetch;

  @override
  String toString() {
    return 'BooksSearchEvent.nextFetchBooks(isFirstFetch: $isFirstFetch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NextFetchBooks &&
            const DeepCollectionEquality()
                .equals(other.isFirstFetch, isFirstFetch));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isFirstFetch));

  @JsonKey(ignore: true)
  @override
  _$$_NextFetchBooksCopyWith<_$_NextFetchBooks> get copyWith =>
      __$$_NextFetchBooksCopyWithImpl<_$_NextFetchBooks>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, bool isFirstFetch) startFetchBooks,
    required TResult Function(bool isFirstFetch) nextFetchBooks,
  }) {
    return nextFetchBooks(isFirstFetch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query, bool isFirstFetch)? startFetchBooks,
    TResult Function(bool isFirstFetch)? nextFetchBooks,
  }) {
    return nextFetchBooks?.call(isFirstFetch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, bool isFirstFetch)? startFetchBooks,
    TResult Function(bool isFirstFetch)? nextFetchBooks,
    required TResult orElse(),
  }) {
    if (nextFetchBooks != null) {
      return nextFetchBooks(isFirstFetch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartFetchBooks value) startFetchBooks,
    required TResult Function(_NextFetchBooks value) nextFetchBooks,
  }) {
    return nextFetchBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartFetchBooks value)? startFetchBooks,
    TResult Function(_NextFetchBooks value)? nextFetchBooks,
  }) {
    return nextFetchBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartFetchBooks value)? startFetchBooks,
    TResult Function(_NextFetchBooks value)? nextFetchBooks,
    required TResult orElse(),
  }) {
    if (nextFetchBooks != null) {
      return nextFetchBooks(this);
    }
    return orElse();
  }
}

abstract class _NextFetchBooks implements BooksSearchEvent {
  const factory _NextFetchBooks(final bool isFirstFetch) = _$_NextFetchBooks;

  @override
  bool get isFirstFetch => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NextFetchBooksCopyWith<_$_NextFetchBooks> get copyWith =>
      throw _privateConstructorUsedError;
}
