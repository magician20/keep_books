//Add Value object needed for book fields to be validate
import 'package:dartz/dartz.dart';
import 'package:keep_books/domain/core/failures.dart';
import 'package:keep_books/domain/core/value_objects.dart';
import 'package:keep_books/domain/core/value_validators.dart';

class BookTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;


  factory BookTitle(String input) {
    return BookTitle._(
      validateStringNotEmpty(input)
          .flatMap(validateSingleLine),
    );
  }

  const BookTitle._(this.value);
}

class BookText extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;


  factory BookText(String input) {
    return BookText._(
      validateStringNotEmpty(input),
    );
  }

  const BookText._(this.value);
}

class BookNote extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 5000;

  factory BookNote(String input) {
    return BookNote._(
      validateMaxStringLength(input, maxLength),
    );
  }

  const BookNote._(this.value);
}

class BookStatus extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory BookStatus(String input) {
    return BookStatus._(
      validateBookStatus(input),
    );
  }

  const BookStatus._(this.value);
}