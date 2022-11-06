// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Profile {
// UniqueId? id, //removed cause it's not needed
  Name? get name => throw _privateConstructorUsedError;
  StringSingleLineNotEmpty? get avatarUrl => throw _privateConstructorUsedError;
  StringSingleLineNotEmpty? get quote => throw _privateConstructorUsedError;
  StringSingleLineNotEmpty? get profession =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call(
      {Name? name,
      StringSingleLineNotEmpty? avatarUrl,
      StringSingleLineNotEmpty? quote,
      StringSingleLineNotEmpty? profession});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  final Profile _value;
  // ignore: unused_field
  final $Res Function(Profile) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? avatarUrl = freezed,
    Object? quote = freezed,
    Object? profession = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as StringSingleLineNotEmpty?,
      quote: quote == freezed
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as StringSingleLineNotEmpty?,
      profession: profession == freezed
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as StringSingleLineNotEmpty?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$_ProfileCopyWith(
          _$_Profile value, $Res Function(_$_Profile) then) =
      __$$_ProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {Name? name,
      StringSingleLineNotEmpty? avatarUrl,
      StringSingleLineNotEmpty? quote,
      StringSingleLineNotEmpty? profession});
}

/// @nodoc
class __$$_ProfileCopyWithImpl<$Res> extends _$ProfileCopyWithImpl<$Res>
    implements _$$_ProfileCopyWith<$Res> {
  __$$_ProfileCopyWithImpl(_$_Profile _value, $Res Function(_$_Profile) _then)
      : super(_value, (v) => _then(v as _$_Profile));

  @override
  _$_Profile get _value => super._value as _$_Profile;

  @override
  $Res call({
    Object? name = freezed,
    Object? avatarUrl = freezed,
    Object? quote = freezed,
    Object? profession = freezed,
  }) {
    return _then(_$_Profile(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as StringSingleLineNotEmpty?,
      quote: quote == freezed
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as StringSingleLineNotEmpty?,
      profession: profession == freezed
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as StringSingleLineNotEmpty?,
    ));
  }
}

/// @nodoc

class _$_Profile extends _Profile with DiagnosticableTreeMixin {
  const _$_Profile({this.name, this.avatarUrl, this.quote, this.profession})
      : super._();

// UniqueId? id, //removed cause it's not needed
  @override
  final Name? name;
  @override
  final StringSingleLineNotEmpty? avatarUrl;
  @override
  final StringSingleLineNotEmpty? quote;
  @override
  final StringSingleLineNotEmpty? profession;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Profile(name: $name, avatarUrl: $avatarUrl, quote: $quote, profession: $profession)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Profile'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('avatarUrl', avatarUrl))
      ..add(DiagnosticsProperty('quote', quote))
      ..add(DiagnosticsProperty('profession', profession));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Profile &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.avatarUrl, avatarUrl) &&
            const DeepCollectionEquality().equals(other.quote, quote) &&
            const DeepCollectionEquality()
                .equals(other.profession, profession));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(avatarUrl),
      const DeepCollectionEquality().hash(quote),
      const DeepCollectionEquality().hash(profession));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      __$$_ProfileCopyWithImpl<_$_Profile>(this, _$identity);
}

abstract class _Profile extends Profile {
  const factory _Profile(
      {final Name? name,
      final StringSingleLineNotEmpty? avatarUrl,
      final StringSingleLineNotEmpty? quote,
      final StringSingleLineNotEmpty? profession}) = _$_Profile;
  const _Profile._() : super._();

  @override // UniqueId? id, //removed cause it's not needed
  Name? get name => throw _privateConstructorUsedError;
  @override
  StringSingleLineNotEmpty? get avatarUrl => throw _privateConstructorUsedError;
  @override
  StringSingleLineNotEmpty? get quote => throw _privateConstructorUsedError;
  @override
  StringSingleLineNotEmpty? get profession =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}
