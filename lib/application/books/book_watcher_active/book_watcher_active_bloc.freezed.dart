// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_watcher_active_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookWatcherActiveState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Book> books) loadSuccess,
    required TResult Function(BookFailure bookFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Book> books)? loadSuccess,
    TResult Function(BookFailure bookFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Book> books)? loadSuccess,
    TResult Function(BookFailure bookFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookWatcherActiveStateCopyWith<$Res> {
  factory $BookWatcherActiveStateCopyWith(BookWatcherActiveState value,
          $Res Function(BookWatcherActiveState) then) =
      _$BookWatcherActiveStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookWatcherActiveStateCopyWithImpl<$Res>
    implements $BookWatcherActiveStateCopyWith<$Res> {
  _$BookWatcherActiveStateCopyWithImpl(this._value, this._then);

  final BookWatcherActiveState _value;
  // ignore: unused_field
  final $Res Function(BookWatcherActiveState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$BookWatcherActiveStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'BookWatcherActiveState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Book> books) loadSuccess,
    required TResult Function(BookFailure bookFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Book> books)? loadSuccess,
    TResult Function(BookFailure bookFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Book> books)? loadSuccess,
    TResult Function(BookFailure bookFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BookWatcherActiveState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$BookWatcherActiveStateCopyWithImpl<$Res>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _$_LoadInProgress));

  @override
  _$_LoadInProgress get _value => super._value as _$_LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'BookWatcherActiveState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Book> books) loadSuccess,
    required TResult Function(BookFailure bookFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Book> books)? loadSuccess,
    TResult Function(BookFailure bookFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Book> books)? loadSuccess,
    TResult Function(BookFailure bookFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements BookWatcherActiveState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Book> books});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$BookWatcherActiveStateCopyWithImpl<$Res>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoadSuccess));

  @override
  _$_LoadSuccess get _value => super._value as _$_LoadSuccess;

  @override
  $Res call({
    Object? books = freezed,
  }) {
    return _then(_$_LoadSuccess(
      books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as KtList<Book>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.books);

  @override
  final KtList<Book> books;

  @override
  String toString() {
    return 'BookWatcherActiveState.loadSuccess(books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality().equals(other.books, books));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(books));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Book> books) loadSuccess,
    required TResult Function(BookFailure bookFailure) loadFailure,
  }) {
    return loadSuccess(books);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Book> books)? loadSuccess,
    TResult Function(BookFailure bookFailure)? loadFailure,
  }) {
    return loadSuccess?.call(books);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Book> books)? loadSuccess,
    TResult Function(BookFailure bookFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(books);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements BookWatcherActiveState {
  const factory _LoadSuccess(final KtList<Book> books) = _$_LoadSuccess;

  KtList<Book> get books => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  $Res call({BookFailure bookFailure});

  $BookFailureCopyWith<$Res> get bookFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$BookWatcherActiveStateCopyWithImpl<$Res>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, (v) => _then(v as _$_LoadFailure));

  @override
  _$_LoadFailure get _value => super._value as _$_LoadFailure;

  @override
  $Res call({
    Object? bookFailure = freezed,
  }) {
    return _then(_$_LoadFailure(
      bookFailure == freezed
          ? _value.bookFailure
          : bookFailure // ignore: cast_nullable_to_non_nullable
              as BookFailure,
    ));
  }

  @override
  $BookFailureCopyWith<$Res> get bookFailure {
    return $BookFailureCopyWith<$Res>(_value.bookFailure, (value) {
      return _then(_value.copyWith(bookFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.bookFailure);

  @override
  final BookFailure bookFailure;

  @override
  String toString() {
    return 'BookWatcherActiveState.loadFailure(bookFailure: $bookFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.bookFailure, bookFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(bookFailure));

  @JsonKey(ignore: true)
  @override
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Book> books) loadSuccess,
    required TResult Function(BookFailure bookFailure) loadFailure,
  }) {
    return loadFailure(bookFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Book> books)? loadSuccess,
    TResult Function(BookFailure bookFailure)? loadFailure,
  }) {
    return loadFailure?.call(bookFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Book> books)? loadSuccess,
    TResult Function(BookFailure bookFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(bookFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements BookWatcherActiveState {
  const factory _LoadFailure(final BookFailure bookFailure) = _$_LoadFailure;

  BookFailure get bookFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookWatcherActiveEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchActiveStarted,
    required TResult Function(Either<BookFailure, KtList<Book>> failureOrBooks)
        booksReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchActiveStarted,
    TResult Function(Either<BookFailure, KtList<Book>> failureOrBooks)?
        booksReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchActiveStarted,
    TResult Function(Either<BookFailure, KtList<Book>> failureOrBooks)?
        booksReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookWatchActiveStarted value) watchActiveStarted,
    required TResult Function(_BooksReceived value) booksReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BookWatchActiveStarted value)? watchActiveStarted,
    TResult Function(_BooksReceived value)? booksReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookWatchActiveStarted value)? watchActiveStarted,
    TResult Function(_BooksReceived value)? booksReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookWatcherActiveEventCopyWith<$Res> {
  factory $BookWatcherActiveEventCopyWith(BookWatcherActiveEvent value,
          $Res Function(BookWatcherActiveEvent) then) =
      _$BookWatcherActiveEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookWatcherActiveEventCopyWithImpl<$Res>
    implements $BookWatcherActiveEventCopyWith<$Res> {
  _$BookWatcherActiveEventCopyWithImpl(this._value, this._then);

  final BookWatcherActiveEvent _value;
  // ignore: unused_field
  final $Res Function(BookWatcherActiveEvent) _then;
}

/// @nodoc
abstract class _$$_BookWatchActiveStartedCopyWith<$Res> {
  factory _$$_BookWatchActiveStartedCopyWith(_$_BookWatchActiveStarted value,
          $Res Function(_$_BookWatchActiveStarted) then) =
      __$$_BookWatchActiveStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BookWatchActiveStartedCopyWithImpl<$Res>
    extends _$BookWatcherActiveEventCopyWithImpl<$Res>
    implements _$$_BookWatchActiveStartedCopyWith<$Res> {
  __$$_BookWatchActiveStartedCopyWithImpl(_$_BookWatchActiveStarted _value,
      $Res Function(_$_BookWatchActiveStarted) _then)
      : super(_value, (v) => _then(v as _$_BookWatchActiveStarted));

  @override
  _$_BookWatchActiveStarted get _value =>
      super._value as _$_BookWatchActiveStarted;
}

/// @nodoc

class _$_BookWatchActiveStarted implements _BookWatchActiveStarted {
  const _$_BookWatchActiveStarted();

  @override
  String toString() {
    return 'BookWatcherActiveEvent.watchActiveStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookWatchActiveStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchActiveStarted,
    required TResult Function(Either<BookFailure, KtList<Book>> failureOrBooks)
        booksReceived,
  }) {
    return watchActiveStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchActiveStarted,
    TResult Function(Either<BookFailure, KtList<Book>> failureOrBooks)?
        booksReceived,
  }) {
    return watchActiveStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchActiveStarted,
    TResult Function(Either<BookFailure, KtList<Book>> failureOrBooks)?
        booksReceived,
    required TResult orElse(),
  }) {
    if (watchActiveStarted != null) {
      return watchActiveStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookWatchActiveStarted value) watchActiveStarted,
    required TResult Function(_BooksReceived value) booksReceived,
  }) {
    return watchActiveStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BookWatchActiveStarted value)? watchActiveStarted,
    TResult Function(_BooksReceived value)? booksReceived,
  }) {
    return watchActiveStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookWatchActiveStarted value)? watchActiveStarted,
    TResult Function(_BooksReceived value)? booksReceived,
    required TResult orElse(),
  }) {
    if (watchActiveStarted != null) {
      return watchActiveStarted(this);
    }
    return orElse();
  }
}

abstract class _BookWatchActiveStarted implements BookWatcherActiveEvent {
  const factory _BookWatchActiveStarted() = _$_BookWatchActiveStarted;
}

/// @nodoc
abstract class _$$_BooksReceivedCopyWith<$Res> {
  factory _$$_BooksReceivedCopyWith(
          _$_BooksReceived value, $Res Function(_$_BooksReceived) then) =
      __$$_BooksReceivedCopyWithImpl<$Res>;
  $Res call({Either<BookFailure, KtList<Book>> failureOrBooks});
}

/// @nodoc
class __$$_BooksReceivedCopyWithImpl<$Res>
    extends _$BookWatcherActiveEventCopyWithImpl<$Res>
    implements _$$_BooksReceivedCopyWith<$Res> {
  __$$_BooksReceivedCopyWithImpl(
      _$_BooksReceived _value, $Res Function(_$_BooksReceived) _then)
      : super(_value, (v) => _then(v as _$_BooksReceived));

  @override
  _$_BooksReceived get _value => super._value as _$_BooksReceived;

  @override
  $Res call({
    Object? failureOrBooks = freezed,
  }) {
    return _then(_$_BooksReceived(
      failureOrBooks == freezed
          ? _value.failureOrBooks
          : failureOrBooks // ignore: cast_nullable_to_non_nullable
              as Either<BookFailure, KtList<Book>>,
    ));
  }
}

/// @nodoc

class _$_BooksReceived implements _BooksReceived {
  const _$_BooksReceived(this.failureOrBooks);

  @override
  final Either<BookFailure, KtList<Book>> failureOrBooks;

  @override
  String toString() {
    return 'BookWatcherActiveEvent.booksReceived(failureOrBooks: $failureOrBooks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BooksReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrBooks, failureOrBooks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrBooks));

  @JsonKey(ignore: true)
  @override
  _$$_BooksReceivedCopyWith<_$_BooksReceived> get copyWith =>
      __$$_BooksReceivedCopyWithImpl<_$_BooksReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchActiveStarted,
    required TResult Function(Either<BookFailure, KtList<Book>> failureOrBooks)
        booksReceived,
  }) {
    return booksReceived(failureOrBooks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchActiveStarted,
    TResult Function(Either<BookFailure, KtList<Book>> failureOrBooks)?
        booksReceived,
  }) {
    return booksReceived?.call(failureOrBooks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchActiveStarted,
    TResult Function(Either<BookFailure, KtList<Book>> failureOrBooks)?
        booksReceived,
    required TResult orElse(),
  }) {
    if (booksReceived != null) {
      return booksReceived(failureOrBooks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookWatchActiveStarted value) watchActiveStarted,
    required TResult Function(_BooksReceived value) booksReceived,
  }) {
    return booksReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BookWatchActiveStarted value)? watchActiveStarted,
    TResult Function(_BooksReceived value)? booksReceived,
  }) {
    return booksReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookWatchActiveStarted value)? watchActiveStarted,
    TResult Function(_BooksReceived value)? booksReceived,
    required TResult orElse(),
  }) {
    if (booksReceived != null) {
      return booksReceived(this);
    }
    return orElse();
  }
}

abstract class _BooksReceived implements BookWatcherActiveEvent {
  const factory _BooksReceived(
          final Either<BookFailure, KtList<Book>> failureOrBooks) =
      _$_BooksReceived;

  Either<BookFailure, KtList<Book>> get failureOrBooks =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_BooksReceivedCopyWith<_$_BooksReceived> get copyWith =>
      throw _privateConstructorUsedError;
}
