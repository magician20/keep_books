import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keep_books/domain/auth/entities/profile.dart';

import '../../domain/auth/entities/user.dart';
import '../../domain/auth/validate/value_objects.dart';
import '../../domain/core/value_objects.dart';

part 'user_profile_dto.freezed.dart';
part 'user_profile_dto.g.dart';

@freezed
class UserProfileDto with _$UserProfileDto {
  const UserProfileDto._();

  factory UserProfileDto({
    required String uid, //Maybe remove that also and use User.uid
    required String name,
    required String avatarUrl,
    required String quote,
    required String profession,
  }) = _UserProfileDto;

  factory UserProfileDto.fromDomain(User user) {
    return UserProfileDto(
      // id: user.profile!.id!.getOrCrash(),
      uid: user.id.getOrCrash(),
      name: user.profile!.name!.getOrCrash(),
      avatarUrl: user.profile!.avatarUrl!.getOrCrash(),
      quote: user.profile!.quote!.getOrCrash(),
      profession: user.profile!.profession!.getOrCrash(),
    );
  }
  User toDomian() {
    return User(
      id: UniqueId.fromUniqueString(uid),
      profile: Profile(
        // id: UniqueId.fromUniqueString(id!),
        name: Name(name),
        avatarUrl: StringSingleLineNotEmpty(avatarUrl),
        quote: StringSingleLineNotEmpty(quote),
        profession: StringSingleLineNotEmpty(profession),
      ),
    );
  }

  factory UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDtoFromJson(json);

  ///Method add DocumentSnapshot.id as an id for UserProfileDto
  factory UserProfileDto.fromFirestore(DocumentSnapshot doc) {
    return UserProfileDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
