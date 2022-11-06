// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
    required TResult Function() bookAlreadyExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    TResult Function()? bookAlreadyExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    TResult Function()? bookAlreadyExists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_bookAlreadyExists value) bookAlreadyExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_bookAlreadyExists value)? bookAlreadyExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_bookAlreadyExists value)? bookAlreadyExists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookFailureCopyWith<$Res> {
  factory $BookFailureCopyWith(
          BookFailure value, $Res Function(BookFailure) then) =
      _$BookFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookFailureCopyWithImpl<$Res> implements $BookFailureCopyWith<$Res> {
  _$BookFailureCopyWithImpl(this._value, this._then);

  final BookFailure _value;
  // ignore: unused_field
  final $Res Function(BookFailure) _then;
}

/// @nodoc
abstract class _$$_UnexpectedCopyWith<$Res> {
  factory _$$_UnexpectedCopyWith(
          _$_Unexpected value, $Res Function(_$_Unexpected) then) =
      __$$_UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnexpectedCopyWithImpl<$Res> extends _$BookFailureCopyWithImpl<$Res>
    implements _$$_UnexpectedCopyWith<$Res> {
  __$$_UnexpectedCopyWithImpl(
      _$_Unexpected _value, $Res Function(_$_Unexpected) _then)
      : super(_value, (v) => _then(v as _$_Unexpected));

  @override
  _$_Unexpected get _value => super._value as _$_Unexpected;
}

/// @nodoc

class _$_Unexpected with DiagnosticableTreeMixin implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookFailure.unexpected()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'BookFailure.unexpected'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
    required TResult Function() bookAlreadyExists,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    TResult Function()? bookAlreadyExists,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    TResult Function()? bookAlreadyExists,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_bookAlreadyExists value) bookAlreadyExists,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_bookAlreadyExists value)? bookAlreadyExists,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_bookAlreadyExists value)? bookAlreadyExists,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements BookFailure {
  const factory _Unexpected() = _$_Unexpected;
}

/// @nodoc
abstract class _$$_InsufficientPermissionCopyWith<$Res> {
  factory _$$_InsufficientPermissionCopyWith(_$_InsufficientPermission value,
          $Res Function(_$_InsufficientPermission) then) =
      __$$_InsufficientPermissionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InsufficientPermissionCopyWithImpl<$Res>
    extends _$BookFailureCopyWithImpl<$Res>
    implements _$$_InsufficientPermissionCopyWith<$Res> {
  __$$_InsufficientPermissionCopyWithImpl(_$_InsufficientPermission _value,
      $Res Function(_$_InsufficientPermission) _then)
      : super(_value, (v) => _then(v as _$_InsufficientPermission));

  @override
  _$_InsufficientPermission get _value =>
      super._value as _$_InsufficientPermission;
}

/// @nodoc

class _$_InsufficientPermission
    with DiagnosticableTreeMixin
    implements _InsufficientPermission {
  const _$_InsufficientPermission();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookFailure.insufficientPermission()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookFailure.insufficientPermission'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsufficientPermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
    required TResult Function() bookAlreadyExists,
  }) {
    return insufficientPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    TResult Function()? bookAlreadyExists,
  }) {
    return insufficientPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    TResult Function()? bookAlreadyExists,
    required TResult orElse(),
  }) {
    if (insufficientPermission != null) {
      return insufficientPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_bookAlreadyExists value) bookAlreadyExists,
  }) {
    return insufficientPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_bookAlreadyExists value)? bookAlreadyExists,
  }) {
    return insufficientPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_bookAlreadyExists value)? bookAlreadyExists,
    required TResult orElse(),
  }) {
    if (insufficientPermission != null) {
      return insufficientPermission(this);
    }
    return orElse();
  }
}

abstract class _InsufficientPermission implements BookFailure {
  const factory _InsufficientPermission() = _$_InsufficientPermission;
}

/// @nodoc
abstract class _$$_UnableToUpdateCopyWith<$Res> {
  factory _$$_UnableToUpdateCopyWith(
          _$_UnableToUpdate value, $Res Function(_$_UnableToUpdate) then) =
      __$$_UnableToUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnableToUpdateCopyWithImpl<$Res>
    extends _$BookFailureCopyWithImpl<$Res>
    implements _$$_UnableToUpdateCopyWith<$Res> {
  __$$_UnableToUpdateCopyWithImpl(
      _$_UnableToUpdate _value, $Res Function(_$_UnableToUpdate) _then)
      : super(_value, (v) => _then(v as _$_UnableToUpdate));

  @override
  _$_UnableToUpdate get _value => super._value as _$_UnableToUpdate;
}

/// @nodoc

class _$_UnableToUpdate
    with DiagnosticableTreeMixin
    implements _UnableToUpdate {
  const _$_UnableToUpdate();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookFailure.unableToUpdate()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'BookFailure.unableToUpdate'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnableToUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
    required TResult Function() bookAlreadyExists,
  }) {
    return unableToUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    TResult Function()? bookAlreadyExists,
  }) {
    return unableToUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    TResult Function()? bookAlreadyExists,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_bookAlreadyExists value) bookAlreadyExists,
  }) {
    return unableToUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_bookAlreadyExists value)? bookAlreadyExists,
  }) {
    return unableToUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_bookAlreadyExists value)? bookAlreadyExists,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate(this);
    }
    return orElse();
  }
}

abstract class _UnableToUpdate implements BookFailure {
  const factory _UnableToUpdate() = _$_UnableToUpdate;
}

/// @nodoc
abstract class _$$_bookAlreadyExistsCopyWith<$Res> {
  factory _$$_bookAlreadyExistsCopyWith(_$_bookAlreadyExists value,
          $Res Function(_$_bookAlreadyExists) then) =
      __$$_bookAlreadyExistsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_bookAlreadyExistsCopyWithImpl<$Res>
    extends _$BookFailureCopyWithImpl<$Res>
    implements _$$_bookAlreadyExistsCopyWith<$Res> {
  __$$_bookAlreadyExistsCopyWithImpl(
      _$_bookAlreadyExists _value, $Res Function(_$_bookAlreadyExists) _then)
      : super(_value, (v) => _then(v as _$_bookAlreadyExists));

  @override
  _$_bookAlreadyExists get _value => super._value as _$_bookAlreadyExists;
}

/// @nodoc

class _$_bookAlreadyExists
    with DiagnosticableTreeMixin
    implements _bookAlreadyExists {
  const _$_bookAlreadyExists();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookFailure.bookAlreadyExists()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookFailure.bookAlreadyExists'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_bookAlreadyExists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermission,
    required TResult Function() unableToUpdate,
    required TResult Function() bookAlreadyExists,
  }) {
    return bookAlreadyExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    TResult Function()? bookAlreadyExists,
  }) {
    return bookAlreadyExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermission,
    TResult Function()? unableToUpdate,
    TResult Function()? bookAlreadyExists,
    required TResult orElse(),
  }) {
    if (bookAlreadyExists != null) {
      return bookAlreadyExists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_bookAlreadyExists value) bookAlreadyExists,
  }) {
    return bookAlreadyExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_bookAlreadyExists value)? bookAlreadyExists,
  }) {
    return bookAlreadyExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_bookAlreadyExists value)? bookAlreadyExists,
    required TResult orElse(),
  }) {
    if (bookAlreadyExists != null) {
      return bookAlreadyExists(this);
    }
    return orElse();
  }
}

abstract class _bookAlreadyExists implements BookFailure {
  const factory _bookAlreadyExists() = _$_bookAlreadyExists;
}
