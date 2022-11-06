import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import 'errors.dart';
import 'failures.dart';
import 'value_validators.dart';

@immutable
abstract class ValueObject<T>  {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  // id = identity , same as writing (right) => right
  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }


  /// simplfy the way from use [value.fold(f,r)] to just call [get failureOrUnit]
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }


  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'value ($value)';
}

//************************************  COMMON   *************************************************/
//it's comman wrapper for single line string
class StringSingleLine extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringSingleLine(String input) {
    return StringSingleLine._(
      validateSingleLine(input),
    );
  }

  const StringSingleLine._(this.value);
}

class StringSingleLineNotEmpty extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringSingleLineNotEmpty(String input) {
    return StringSingleLineNotEmpty._(
      validateTextSingleLineNotEmpty(input),
    );
  }

  const StringSingleLineNotEmpty._(this.value);
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(
      right(const Uuid().v4()),
    );
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(
      right(uniqueId),
    );
  }

  const UniqueId._(this.value);
}