// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfileDto _$UserProfileDtoFromJson(Map<String, dynamic> json) {
  return _UserProfileDto.fromJson(json);
}

/// @nodoc
mixin _$UserProfileDto {
  String get uid =>
      throw _privateConstructorUsedError; //Maybe remove that also and use User.uid
  String get name => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  String get quote => throw _privateConstructorUsedError;
  String get profession => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileDtoCopyWith<UserProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileDtoCopyWith<$Res> {
  factory $UserProfileDtoCopyWith(
          UserProfileDto value, $Res Function(UserProfileDto) then) =
      _$UserProfileDtoCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      String name,
      String avatarUrl,
      String quote,
      String profession});
}

/// @nodoc
class _$UserProfileDtoCopyWithImpl<$Res>
    implements $UserProfileDtoCopyWith<$Res> {
  _$UserProfileDtoCopyWithImpl(this._value, this._then);

  final UserProfileDto _value;
  // ignore: unused_field
  final $Res Function(UserProfileDto) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? avatarUrl = freezed,
    Object? quote = freezed,
    Object? profession = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      quote: quote == freezed
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as String,
      profession: profession == freezed
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserProfileDtoCopyWith<$Res>
    implements $UserProfileDtoCopyWith<$Res> {
  factory _$$_UserProfileDtoCopyWith(
          _$_UserProfileDto value, $Res Function(_$_UserProfileDto) then) =
      __$$_UserProfileDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String name,
      String avatarUrl,
      String quote,
      String profession});
}

/// @nodoc
class __$$_UserProfileDtoCopyWithImpl<$Res>
    extends _$UserProfileDtoCopyWithImpl<$Res>
    implements _$$_UserProfileDtoCopyWith<$Res> {
  __$$_UserProfileDtoCopyWithImpl(
      _$_UserProfileDto _value, $Res Function(_$_UserProfileDto) _then)
      : super(_value, (v) => _then(v as _$_UserProfileDto));

  @override
  _$_UserProfileDto get _value => super._value as _$_UserProfileDto;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? avatarUrl = freezed,
    Object? quote = freezed,
    Object? profession = freezed,
  }) {
    return _then(_$_UserProfileDto(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      quote: quote == freezed
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as String,
      profession: profession == freezed
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfileDto extends _UserProfileDto with DiagnosticableTreeMixin {
  _$_UserProfileDto(
      {required this.uid,
      required this.name,
      required this.avatarUrl,
      required this.quote,
      required this.profession})
      : super._();

  factory _$_UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileDtoFromJson(json);

  @override
  final String uid;
//Maybe remove that also and use User.uid
  @override
  final String name;
  @override
  final String avatarUrl;
  @override
  final String quote;
  @override
  final String profession;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserProfileDto(uid: $uid, name: $name, avatarUrl: $avatarUrl, quote: $quote, profession: $profession)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserProfileDto'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('avatarUrl', avatarUrl))
      ..add(DiagnosticsProperty('quote', quote))
      ..add(DiagnosticsProperty('profession', profession));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProfileDto &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.avatarUrl, avatarUrl) &&
            const DeepCollectionEquality().equals(other.quote, quote) &&
            const DeepCollectionEquality()
                .equals(other.profession, profession));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(avatarUrl),
      const DeepCollectionEquality().hash(quote),
      const DeepCollectionEquality().hash(profession));

  @JsonKey(ignore: true)
  @override
  _$$_UserProfileDtoCopyWith<_$_UserProfileDto> get copyWith =>
      __$$_UserProfileDtoCopyWithImpl<_$_UserProfileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileDtoToJson(this);
  }
}

abstract class _UserProfileDto extends UserProfileDto {
  factory _UserProfileDto(
      {required final String uid,
      required final String name,
      required final String avatarUrl,
      required final String quote,
      required final String profession}) = _$_UserProfileDto;
  _UserProfileDto._() : super._();

  factory _UserProfileDto.fromJson(Map<String, dynamic> json) =
      _$_UserProfileDto.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override //Maybe remove that also and use User.uid
  String get name => throw _privateConstructorUsedError;
  @override
  String get avatarUrl => throw _privateConstructorUsedError;
  @override
  String get quote => throw _privateConstructorUsedError;
  @override
  String get profession => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserProfileDtoCopyWith<_$_UserProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}
