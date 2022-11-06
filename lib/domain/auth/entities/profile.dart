import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/failures.dart';
import '../../core/value_objects.dart';
import '../validate/value_objects.dart';

part 'profile.freezed.dart';

@freezed
class Profile with _$Profile {
  const Profile._();
 const factory Profile({
    // UniqueId? id, //removed cause it's not needed
     Name? name,
    StringSingleLineNotEmpty? avatarUrl,
    StringSingleLineNotEmpty? quote,
    StringSingleLineNotEmpty? profession,
  }) = _Profile;

  //TODO:change to be null or can be empty
  factory Profile.empty() => Profile(
        name: Name("Your Name"),
        avatarUrl: StringSingleLineNotEmpty('https://i.pravatar.cc/300'),
        quote: StringSingleLineNotEmpty("quote"),
        profession: StringSingleLineNotEmpty("profession"),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name!.failureOrUnit
        .andThen(avatarUrl!.failureOrUnit)
        .andThen(quote!.failureOrUnit)
        .andThen(profession!.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }

  bool get isEmpty => this == Profile.empty();
}
