// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_add_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookAddState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addInProgress,
    required TResult Function() addSuccess,
    required TResult Function(BookFailure bookFailure) addFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addInProgress,
    TResult Function()? addSuccess,
    TResult Function(BookFailure bookFailure)? addFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addInProgress,
    TResult Function()? addSuccess,
    TResult Function(BookFailure bookFailure)? addFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddInProgress value) addInProgress,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_AddFailure value) addFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddInProgress value)? addInProgress,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_AddFailure value)? addFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddInProgress value)? addInProgress,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_AddFailure value)? addFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookAddStateCopyWith<$Res> {
  factory $BookAddStateCopyWith(
          BookAddState value, $Res Function(BookAddState) then) =
      _$BookAddStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookAddStateCopyWithImpl<$Res> implements $BookAddStateCopyWith<$Res> {
  _$BookAddStateCopyWithImpl(this._value, this._then);

  final BookAddState _value;
  // ignore: unused_field
  final $Res Function(BookAddState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$BookAddStateCopyWithImpl<$Res>
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
    return 'BookAddState.initial()';
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
    required TResult Function() addInProgress,
    required TResult Function() addSuccess,
    required TResult Function(BookFailure bookFailure) addFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addInProgress,
    TResult Function()? addSuccess,
    TResult Function(BookFailure bookFailure)? addFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addInProgress,
    TResult Function()? addSuccess,
    TResult Function(BookFailure bookFailure)? addFailure,
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
    required TResult Function(_AddInProgress value) addInProgress,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_AddFailure value) addFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddInProgress value)? addInProgress,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_AddFailure value)? addFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddInProgress value)? addInProgress,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_AddFailure value)? addFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BookAddState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_AddInProgressCopyWith<$Res> {
  factory _$$_AddInProgressCopyWith(
          _$_AddInProgress value, $Res Function(_$_AddInProgress) then) =
      __$$_AddInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddInProgressCopyWithImpl<$Res>
    extends _$BookAddStateCopyWithImpl<$Res>
    implements _$$_AddInProgressCopyWith<$Res> {
  __$$_AddInProgressCopyWithImpl(
      _$_AddInProgress _value, $Res Function(_$_AddInProgress) _then)
      : super(_value, (v) => _then(v as _$_AddInProgress));

  @override
  _$_AddInProgress get _value => super._value as _$_AddInProgress;
}

/// @nodoc

class _$_AddInProgress implements _AddInProgress {
  const _$_AddInProgress();

  @override
  String toString() {
    return 'BookAddState.addInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addInProgress,
    required TResult Function() addSuccess,
    required TResult Function(BookFailure bookFailure) addFailure,
  }) {
    return addInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addInProgress,
    TResult Function()? addSuccess,
    TResult Function(BookFailure bookFailure)? addFailure,
  }) {
    return addInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addInProgress,
    TResult Function()? addSuccess,
    TResult Function(BookFailure bookFailure)? addFailure,
    required TResult orElse(),
  }) {
    if (addInProgress != null) {
      return addInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddInProgress value) addInProgress,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_AddFailure value) addFailure,
  }) {
    return addInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddInProgress value)? addInProgress,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_AddFailure value)? addFailure,
  }) {
    return addInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddInProgress value)? addInProgress,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_AddFailure value)? addFailure,
    required TResult orElse(),
  }) {
    if (addInProgress != null) {
      return addInProgress(this);
    }
    return orElse();
  }
}

abstract class _AddInProgress implements BookAddState {
  const factory _AddInProgress() = _$_AddInProgress;
}

/// @nodoc
abstract class _$$_AddSuccessCopyWith<$Res> {
  factory _$$_AddSuccessCopyWith(
          _$_AddSuccess value, $Res Function(_$_AddSuccess) then) =
      __$$_AddSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddSuccessCopyWithImpl<$Res> extends _$BookAddStateCopyWithImpl<$Res>
    implements _$$_AddSuccessCopyWith<$Res> {
  __$$_AddSuccessCopyWithImpl(
      _$_AddSuccess _value, $Res Function(_$_AddSuccess) _then)
      : super(_value, (v) => _then(v as _$_AddSuccess));

  @override
  _$_AddSuccess get _value => super._value as _$_AddSuccess;
}

/// @nodoc

class _$_AddSuccess implements _AddSuccess {
  const _$_AddSuccess();

  @override
  String toString() {
    return 'BookAddState.addSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addInProgress,
    required TResult Function() addSuccess,
    required TResult Function(BookFailure bookFailure) addFailure,
  }) {
    return addSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addInProgress,
    TResult Function()? addSuccess,
    TResult Function(BookFailure bookFailure)? addFailure,
  }) {
    return addSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addInProgress,
    TResult Function()? addSuccess,
    TResult Function(BookFailure bookFailure)? addFailure,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddInProgress value) addInProgress,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_AddFailure value) addFailure,
  }) {
    return addSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddInProgress value)? addInProgress,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_AddFailure value)? addFailure,
  }) {
    return addSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddInProgress value)? addInProgress,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_AddFailure value)? addFailure,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddSuccess implements BookAddState {
  const factory _AddSuccess() = _$_AddSuccess;
}

/// @nodoc
abstract class _$$_AddFailureCopyWith<$Res> {
  factory _$$_AddFailureCopyWith(
          _$_AddFailure value, $Res Function(_$_AddFailure) then) =
      __$$_AddFailureCopyWithImpl<$Res>;
  $Res call({BookFailure bookFailure});

  $BookFailureCopyWith<$Res> get bookFailure;
}

/// @nodoc
class __$$_AddFailureCopyWithImpl<$Res> extends _$BookAddStateCopyWithImpl<$Res>
    implements _$$_AddFailureCopyWith<$Res> {
  __$$_AddFailureCopyWithImpl(
      _$_AddFailure _value, $Res Function(_$_AddFailure) _then)
      : super(_value, (v) => _then(v as _$_AddFailure));

  @override
  _$_AddFailure get _value => super._value as _$_AddFailure;

  @override
  $Res call({
    Object? bookFailure = freezed,
  }) {
    return _then(_$_AddFailure(
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

class _$_AddFailure implements _AddFailure {
  const _$_AddFailure(this.bookFailure);

  @override
  final BookFailure bookFailure;

  @override
  String toString() {
    return 'BookAddState.addFailure(bookFailure: $bookFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddFailure &&
            const DeepCollectionEquality()
                .equals(other.bookFailure, bookFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(bookFailure));

  @JsonKey(ignore: true)
  @override
  _$$_AddFailureCopyWith<_$_AddFailure> get copyWith =>
      __$$_AddFailureCopyWithImpl<_$_AddFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addInProgress,
    required TResult Function() addSuccess,
    required TResult Function(BookFailure bookFailure) addFailure,
  }) {
    return addFailure(bookFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addInProgress,
    TResult Function()? addSuccess,
    TResult Function(BookFailure bookFailure)? addFailure,
  }) {
    return addFailure?.call(bookFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addInProgress,
    TResult Function()? addSuccess,
    TResult Function(BookFailure bookFailure)? addFailure,
    required TResult orElse(),
  }) {
    if (addFailure != null) {
      return addFailure(bookFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddInProgress value) addInProgress,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_AddFailure value) addFailure,
  }) {
    return addFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddInProgress value)? addInProgress,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_AddFailure value)? addFailure,
  }) {
    return addFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddInProgress value)? addInProgress,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_AddFailure value)? addFailure,
    required TResult orElse(),
  }) {
    if (addFailure != null) {
      return addFailure(this);
    }
    return orElse();
  }
}

abstract class _AddFailure implements BookAddState {
  const factory _AddFailure(final BookFailure bookFailure) = _$_AddFailure;

  BookFailure get bookFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AddFailureCopyWith<_$_AddFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookAddEvent {
  Book get book => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Book book)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Add value)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookAddEventCopyWith<BookAddEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookAddEventCopyWith<$Res> {
  factory $BookAddEventCopyWith(
          BookAddEvent value, $Res Function(BookAddEvent) then) =
      _$BookAddEventCopyWithImpl<$Res>;
  $Res call({Book book});

  $BookCopyWith<$Res> get book;
}

/// @nodoc
class _$BookAddEventCopyWithImpl<$Res> implements $BookAddEventCopyWith<$Res> {
  _$BookAddEventCopyWithImpl(this._value, this._then);

  final BookAddEvent _value;
  // ignore: unused_field
  final $Res Function(BookAddEvent) _then;

  @override
  $Res call({
    Object? book = freezed,
  }) {
    return _then(_value.copyWith(
      book: book == freezed
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
    ));
  }

  @override
  $BookCopyWith<$Res> get book {
    return $BookCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value));
    });
  }
}

/// @nodoc
abstract class _$$_AddCopyWith<$Res> implements $BookAddEventCopyWith<$Res> {
  factory _$$_AddCopyWith(_$_Add value, $Res Function(_$_Add) then) =
      __$$_AddCopyWithImpl<$Res>;
  @override
  $Res call({Book book});

  @override
  $BookCopyWith<$Res> get book;
}

/// @nodoc
class __$$_AddCopyWithImpl<$Res> extends _$BookAddEventCopyWithImpl<$Res>
    implements _$$_AddCopyWith<$Res> {
  __$$_AddCopyWithImpl(_$_Add _value, $Res Function(_$_Add) _then)
      : super(_value, (v) => _then(v as _$_Add));

  @override
  _$_Add get _value => super._value as _$_Add;

  @override
  $Res call({
    Object? book = freezed,
  }) {
    return _then(_$_Add(
      book == freezed
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
    ));
  }
}

/// @nodoc

class _$_Add implements _Add {
  const _$_Add(this.book);

  @override
  final Book book;

  @override
  String toString() {
    return 'BookAddEvent.add(book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Add &&
            const DeepCollectionEquality().equals(other.book, book));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(book));

  @JsonKey(ignore: true)
  @override
  _$$_AddCopyWith<_$_Add> get copyWith =>
      __$$_AddCopyWithImpl<_$_Add>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) add,
  }) {
    return add(book);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Book book)? add,
  }) {
    return add?.call(book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Add value)? add,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements BookAddEvent {
  const factory _Add(final Book book) = _$_Add;

  @override
  Book get book => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AddCopyWith<_$_Add> get copyWith => throw _privateConstructorUsedError;
}
