// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileDto _$$_UserProfileDtoFromJson(Map<String, dynamic> json) =>
    _$_UserProfileDto(
      uid: json['uid'] as String,
      name: json['name'] as String,
      avatarUrl: json['avatarUrl'] as String,
      quote: json['quote'] as String,
      profession: json['profession'] as String,
    );

Map<String, dynamic> _$$_UserProfileDtoToJson(_$_UserProfileDto instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
      'quote': instance.quote,
      'profession': instance.profession,
    };
