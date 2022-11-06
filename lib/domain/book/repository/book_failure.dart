import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_failure.freezed.dart';

@freezed
 class BookFailure with _$BookFailure {
  const factory BookFailure.unexpected() = _Unexpected;
  const factory BookFailure.insufficientPermission() = _InsufficientPermission;
  const factory BookFailure.unableToUpdate() = _UnableToUpdate;
  const factory BookFailure.bookAlreadyExists() = _bookAlreadyExists;
}
