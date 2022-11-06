import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:keep_books/domain/auth/entities/profile.dart';
import 'package:keep_books/domain/auth/validate/value_objects.dart';
import 'package:keep_books/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    ///user's unique ID
    required UniqueId id,
    EmailAddress? emailAddress,
    //add userProfile as composition object
    Profile? profile,
  }) = _User;
  factory User.empty() => User(
        id: UniqueId.fromUniqueString(""),
        emailAddress: null,
        profile: null,
      );

  bool get isEmpty => this == User.empty();
}
