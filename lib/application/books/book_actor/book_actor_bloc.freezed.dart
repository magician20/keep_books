// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(BookFailure bookFailure) statusChangeFailure,
    required TResult Function() statusChangeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(BookFailure bookFailure)? statusChangeFailure,
    TResult Function()? statusChangeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(BookFailure bookFailure)? statusChangeFailure,
    TResult Function()? statusChangeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_StatusChangeFailure value) statusChangeFailure,
    required TResult Function(_StatusChangeSuccess value) statusChangeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_StatusChangeFailure value)? statusChangeFailure,
    TResult Function(_StatusChangeSuccess value)? statusChangeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_StatusChangeFailure value)? statusChangeFailure,
    TResult Function(_StatusChangeSuccess value)? statusChangeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookActorStateCopyWith<$Res> {
  factory $BookActorStateCopyWith(
          BookActorState value, $Res Function(BookActorState) then) =
      _$BookActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookActorStateCopyWithImpl<$Res>
    implements $BookActorStateCopyWith<$Res> {
  _$BookActorStateCopyWithImpl(this._value, this._then);

  final BookActorState _value;
  // ignore: unused_field
  final $Res Function(BookActorState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$BookActorStateCopyWithImpl<$Res>
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
    return 'BookActorState.initial()';
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
    required TResult Function() actionInProgress,
    required TResult Function(BookFailure bookFailure) statusChangeFailure,
    required TResult Function() statusChangeSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(BookFailure bookFailure)? statusChangeFailure,
    TResult Function()? statusChangeSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(BookFailure bookFailure)? statusChangeFailure,
    TResult Function()? statusChangeSuccess,
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
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_StatusChangeFailure value) statusChangeFailure,
    required TResult Function(_StatusChangeSuccess value) statusChangeSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_StatusChangeFailure value)? statusChangeFailure,
    TResult Function(_StatusChangeSuccess value)? statusChangeSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_StatusChangeFailure value)? statusChangeFailure,
    TResult Function(_StatusChangeSuccess value)? statusChangeSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BookActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ActionInProgressCopyWith<$Res> {
  factory _$$_ActionInProgressCopyWith(
          _$_ActionInProgress value, $Res Function(_$_ActionInProgress) then) =
      __$$_ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ActionInProgressCopyWithImpl<$Res>
    extends _$BookActorStateCopyWithImpl<$Res>
    implements _$$_ActionInProgressCopyWith<$Res> {
  __$$_ActionInProgressCopyWithImpl(
      _$_ActionInProgress _value, $Res Function(_$_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _$_ActionInProgress));

  @override
  _$_ActionInProgress get _value => super._value as _$_ActionInProgress;
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'BookActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(BookFailure bookFailure) statusChangeFailure,
    required TResult Function() statusChangeSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(BookFailure bookFailure)? statusChangeFailure,
    TResult Function()? statusChangeSuccess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(BookFailure bookFailure)? statusChangeFailure,
    TResult Function()? statusChangeSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_StatusChangeFailure value) statusChangeFailure,
    required TResult Function(_StatusChangeSuccess value) statusChangeSuccess,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_StatusChangeFailure value)? statusChangeFailure,
    TResult Function(_StatusChangeSuccess value)? statusChangeSuccess,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_StatusChangeFailure value)? statusChangeFailure,
    TResult Function(_StatusChangeSuccess value)? statusChangeSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements BookActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$$_StatusChangeFailureCopyWith<$Res> {
  factory _$$_StatusChangeFailureCopyWith(_$_StatusChangeFailure value,
          $Res Function(_$_StatusChangeFailure) then) =
      __$$_StatusChangeFailureCopyWithImpl<$Res>;
  $Res call({BookFailure bookFailure});

  $BookFailureCopyWith<$Res> get bookFailure;
}

/// @nodoc
class __$$_StatusChangeFailureCopyWithImpl<$Res>
    extends _$BookActorStateCopyWithImpl<$Res>
    implements _$$_StatusChangeFailureCopyWith<$Res> {
  __$$_StatusChangeFailureCopyWithImpl(_$_StatusChangeFailure _value,
      $Res Function(_$_StatusChangeFailure) _then)
      : super(_value, (v) => _then(v as _$_StatusChangeFailure));

  @override
  _$_StatusChangeFailure get _value => super._value as _$_StatusChangeFailure;

  @override
  $Res call({
    Object? bookFailure = freezed,
  }) {
    return _then(_$_StatusChangeFailure(
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

class _$_StatusChangeFailure implements _StatusChangeFailure {
  const _$_StatusChangeFailure(this.bookFailure);

  @override
  final BookFailure bookFailure;

  @override
  String toString() {
    return 'BookActorState.statusChangeFailure(bookFailure: $bookFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusChangeFailure &&
            const DeepCollectionEquality()
                .equals(other.bookFailure, bookFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(bookFailure));

  @JsonKey(ignore: true)
  @override
  _$$_StatusChangeFailureCopyWith<_$_StatusChangeFailure> get copyWith =>
      __$$_StatusChangeFailureCopyWithImpl<_$_StatusChangeFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(BookFailure bookFailure) statusChangeFailure,
    required TResult Function() statusChangeSuccess,
  }) {
    return statusChangeFailure(bookFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(BookFailure bookFailure)? statusChangeFailure,
    TResult Function()? statusChangeSuccess,
  }) {
    return statusChangeFailure?.call(bookFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(BookFailure bookFailure)? statusChangeFailure,
    TResult Function()? statusChangeSuccess,
    required TResult orElse(),
  }) {
    if (statusChangeFailure != null) {
      return statusChangeFailure(bookFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_StatusChangeFailure value) statusChangeFailure,
    required TResult Function(_StatusChangeSuccess value) statusChangeSuccess,
  }) {
    return statusChangeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_StatusChangeFailure value)? statusChangeFailure,
    TResult Function(_StatusChangeSuccess value)? statusChangeSuccess,
  }) {
    return statusChangeFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_StatusChangeFailure value)? statusChangeFailure,
    TResult Function(_StatusChangeSuccess value)? statusChangeSuccess,
    required TResult orElse(),
  }) {
    if (statusChangeFailure != null) {
      return statusChangeFailure(this);
    }
    return orElse();
  }
}

abstract class _StatusChangeFailure implements BookActorState {
  const factory _StatusChangeFailure(final BookFailure bookFailure) =
      _$_StatusChangeFailure;

  BookFailure get bookFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_StatusChangeFailureCopyWith<_$_StatusChangeFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StatusChangeSuccessCopyWith<$Res> {
  factory _$$_StatusChangeSuccessCopyWith(_$_StatusChangeSuccess value,
          $Res Function(_$_StatusChangeSuccess) then) =
      __$$_StatusChangeSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StatusChangeSuccessCopyWithImpl<$Res>
    extends _$BookActorStateCopyWithImpl<$Res>
    implements _$$_StatusChangeSuccessCopyWith<$Res> {
  __$$_StatusChangeSuccessCopyWithImpl(_$_StatusChangeSuccess _value,
      $Res Function(_$_StatusChangeSuccess) _then)
      : super(_value, (v) => _then(v as _$_StatusChangeSuccess));

  @override
  _$_StatusChangeSuccess get _value => super._value as _$_StatusChangeSuccess;
}

/// @nodoc

class _$_StatusChangeSuccess implements _StatusChangeSuccess {
  const _$_StatusChangeSuccess();

  @override
  String toString() {
    return 'BookActorState.statusChangeSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StatusChangeSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(BookFailure bookFailure) statusChangeFailure,
    required TResult Function() statusChangeSuccess,
  }) {
    return statusChangeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(BookFailure bookFailure)? statusChangeFailure,
    TResult Function()? statusChangeSuccess,
  }) {
    return statusChangeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(BookFailure bookFailure)? statusChangeFailure,
    TResult Function()? statusChangeSuccess,
    required TResult orElse(),
  }) {
    if (statusChangeSuccess != null) {
      return statusChangeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_StatusChangeFailure value) statusChangeFailure,
    required TResult Function(_StatusChangeSuccess value) statusChangeSuccess,
  }) {
    return statusChangeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_StatusChangeFailure value)? statusChangeFailure,
    TResult Function(_StatusChangeSuccess value)? statusChangeSuccess,
  }) {
    return statusChangeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_StatusChangeFailure value)? statusChangeFailure,
    TResult Function(_StatusChangeSuccess value)? statusChangeSuccess,
    required TResult orElse(),
  }) {
    if (statusChangeSuccess != null) {
      return statusChangeSuccess(this);
    }
    return orElse();
  }
}

abstract class _StatusChangeSuccess implements BookActorState {
  const factory _StatusChangeSuccess() = _$_StatusChangeSuccess;
}

/// @nodoc
mixin _$BookActorEvent {
  Book get book => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Book book)? statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? statusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusChanged value) statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StatusChanged value)? statusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusChanged value)? statusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookActorEventCopyWith<BookActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookActorEventCopyWith<$Res> {
  factory $BookActorEventCopyWith(
          BookActorEvent value, $Res Function(BookActorEvent) then) =
      _$BookActorEventCopyWithImpl<$Res>;
  $Res call({Book book});

  $BookCopyWith<$Res> get book;
}

/// @nodoc
class _$BookActorEventCopyWithImpl<$Res>
    implements $BookActorEventCopyWith<$Res> {
  _$BookActorEventCopyWithImpl(this._value, this._then);

  final BookActorEvent _value;
  // ignore: unused_field
  final $Res Function(BookActorEvent) _then;

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
abstract class _$$_StatusChangedCopyWith<$Res>
    implements $BookActorEventCopyWith<$Res> {
  factory _$$_StatusChangedCopyWith(
          _$_StatusChanged value, $Res Function(_$_StatusChanged) then) =
      __$$_StatusChangedCopyWithImpl<$Res>;
  @override
  $Res call({Book book});

  @override
  $BookCopyWith<$Res> get book;
}

/// @nodoc
class __$$_StatusChangedCopyWithImpl<$Res>
    extends _$BookActorEventCopyWithImpl<$Res>
    implements _$$_StatusChangedCopyWith<$Res> {
  __$$_StatusChangedCopyWithImpl(
      _$_StatusChanged _value, $Res Function(_$_StatusChanged) _then)
      : super(_value, (v) => _then(v as _$_StatusChanged));

  @override
  _$_StatusChanged get _value => super._value as _$_StatusChanged;

  @override
  $Res call({
    Object? book = freezed,
  }) {
    return _then(_$_StatusChanged(
      book == freezed
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
    ));
  }
}

/// @nodoc

class _$_StatusChanged implements _StatusChanged {
  const _$_StatusChanged(this.book);

  @override
  final Book book;

  @override
  String toString() {
    return 'BookActorEvent.statusChanged(book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusChanged &&
            const DeepCollectionEquality().equals(other.book, book));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(book));

  @JsonKey(ignore: true)
  @override
  _$$_StatusChangedCopyWith<_$_StatusChanged> get copyWith =>
      __$$_StatusChangedCopyWithImpl<_$_StatusChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) statusChanged,
  }) {
    return statusChanged(book);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Book book)? statusChanged,
  }) {
    return statusChanged?.call(book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? statusChanged,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusChanged value) statusChanged,
  }) {
    return statusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StatusChanged value)? statusChanged,
  }) {
    return statusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusChanged value)? statusChanged,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(this);
    }
    return orElse();
  }
}

abstract class _StatusChanged implements BookActorEvent {
  const factory _StatusChanged(final Book book) = _$_StatusChanged;

  @override
  Book get book => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StatusChangedCopyWith<_$_StatusChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
