// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? emailStr) emailChanged,
    required TResult Function(String? passwordStr) passwordChanged,
    required TResult Function(String? userNameStr) nameChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? emailStr)? emailChanged,
    TResult Function(String? passwordStr)? passwordChanged,
    TResult Function(String? userNameStr)? nameChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? emailStr)? emailChanged,
    TResult Function(String? passwordStr)? passwordChanged,
    TResult Function(String? userNameStr)? nameChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res> implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  final SignUpEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpEvent) _then;
}

/// @nodoc
abstract class _$$EmailChangedCopyWith<$Res> {
  factory _$$EmailChangedCopyWith(
          _$EmailChanged value, $Res Function(_$EmailChanged) then) =
      __$$EmailChangedCopyWithImpl<$Res>;
  $Res call({String? emailStr});
}

/// @nodoc
class __$$EmailChangedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements _$$EmailChangedCopyWith<$Res> {
  __$$EmailChangedCopyWithImpl(
      _$EmailChanged _value, $Res Function(_$EmailChanged) _then)
      : super(_value, (v) => _then(v as _$EmailChanged));

  @override
  _$EmailChanged get _value => super._value as _$EmailChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(_$EmailChanged(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr);

  @override
  final String? emailStr;

  @override
  String toString() {
    return 'SignUpEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChanged &&
            const DeepCollectionEquality().equals(other.emailStr, emailStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(emailStr));

  @JsonKey(ignore: true)
  @override
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      __$$EmailChangedCopyWithImpl<_$EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? emailStr) emailChanged,
    required TResult Function(String? passwordStr) passwordChanged,
    required TResult Function(String? userNameStr) nameChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? emailStr)? emailChanged,
    TResult Function(String? passwordStr)? passwordChanged,
    TResult Function(String? userNameStr)? nameChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? emailStr)? emailChanged,
    TResult Function(String? passwordStr)? passwordChanged,
    TResult Function(String? userNameStr)? nameChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignUpEvent {
  const factory EmailChanged(final String? emailStr) = _$EmailChanged;

  String? get emailStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedCopyWith<$Res> {
  factory _$$PasswordChangedCopyWith(
          _$PasswordChanged value, $Res Function(_$PasswordChanged) then) =
      __$$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String? passwordStr});
}

/// @nodoc
class __$$PasswordChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$$PasswordChangedCopyWith<$Res> {
  __$$PasswordChangedCopyWithImpl(
      _$PasswordChanged _value, $Res Function(_$PasswordChanged) _then)
      : super(_value, (v) => _then(v as _$PasswordChanged));

  @override
  _$PasswordChanged get _value => super._value as _$PasswordChanged;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(_$PasswordChanged(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr);

  @override
  final String? passwordStr;

  @override
  String toString() {
    return 'SignUpEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChanged &&
            const DeepCollectionEquality()
                .equals(other.passwordStr, passwordStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(passwordStr));

  @JsonKey(ignore: true)
  @override
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      __$$PasswordChangedCopyWithImpl<_$PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? emailStr) emailChanged,
    required TResult Function(String? passwordStr) passwordChanged,
    required TResult Function(String? userNameStr) nameChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? emailStr)? emailChanged,
    TResult Function(String? passwordStr)? passwordChanged,
    TResult Function(String? userNameStr)? nameChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? emailStr)? emailChanged,
    TResult Function(String? passwordStr)? passwordChanged,
    TResult Function(String? userNameStr)? nameChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignUpEvent {
  const factory PasswordChanged(final String? passwordStr) = _$PasswordChanged;

  String? get passwordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameChangedCopyWith<$Res> {
  factory _$$NameChangedCopyWith(
          _$NameChanged value, $Res Function(_$NameChanged) then) =
      __$$NameChangedCopyWithImpl<$Res>;
  $Res call({String? userNameStr});
}

/// @nodoc
class __$$NameChangedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements _$$NameChangedCopyWith<$Res> {
  __$$NameChangedCopyWithImpl(
      _$NameChanged _value, $Res Function(_$NameChanged) _then)
      : super(_value, (v) => _then(v as _$NameChanged));

  @override
  _$NameChanged get _value => super._value as _$NameChanged;

  @override
  $Res call({
    Object? userNameStr = freezed,
  }) {
    return _then(_$NameChanged(
      userNameStr == freezed
          ? _value.userNameStr
          : userNameStr // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.userNameStr);

  @override
  final String? userNameStr;

  @override
  String toString() {
    return 'SignUpEvent.nameChanged(userNameStr: $userNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChanged &&
            const DeepCollectionEquality()
                .equals(other.userNameStr, userNameStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(userNameStr));

  @JsonKey(ignore: true)
  @override
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      __$$NameChangedCopyWithImpl<_$NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? emailStr) emailChanged,
    required TResult Function(String? passwordStr) passwordChanged,
    required TResult Function(String? userNameStr) nameChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return nameChanged(userNameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? emailStr)? emailChanged,
    TResult Function(String? passwordStr)? passwordChanged,
    TResult Function(String? userNameStr)? nameChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
  }) {
    return nameChanged?.call(userNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? emailStr)? emailChanged,
    TResult Function(String? passwordStr)? passwordChanged,
    TResult Function(String? userNameStr)? nameChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(userNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements SignUpEvent {
  const factory NameChanged(final String? userNameStr) = _$NameChanged;

  String? get userNameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$$RegisterWithEmailAndPasswordPressedCopyWith(
          _$RegisterWithEmailAndPasswordPressed value,
          $Res Function(_$RegisterWithEmailAndPasswordPressed) then) =
      __$$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$$RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  __$$RegisterWithEmailAndPasswordPressedCopyWithImpl(
      _$RegisterWithEmailAndPasswordPressed _value,
      $Res Function(_$RegisterWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as _$RegisterWithEmailAndPasswordPressed));

  @override
  _$RegisterWithEmailAndPasswordPressed get _value =>
      super._value as _$RegisterWithEmailAndPasswordPressed;
}

/// @nodoc

class _$RegisterWithEmailAndPasswordPressed
    implements RegisterWithEmailAndPasswordPressed {
  const _$RegisterWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignUpEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? emailStr) emailChanged,
    required TResult Function(String? passwordStr) passwordChanged,
    required TResult Function(String? userNameStr) nameChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? emailStr)? emailChanged,
    TResult Function(String? passwordStr)? passwordChanged,
    TResult Function(String? userNameStr)? nameChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? emailStr)? emailChanged,
    TResult Function(String? passwordStr)? passwordChanged,
    TResult Function(String? userNameStr)? nameChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasswordPressed implements SignUpEvent {
  const factory RegisterWithEmailAndPasswordPressed() =
      _$RegisterWithEmailAndPasswordPressed;
}

/// @nodoc
mixin _$SignUpState {
//Validated all values
  EmailAddress? get emailAddress => throw _privateConstructorUsedError;
  RegisterPassword? get password => throw _privateConstructorUsedError;
  Name? get name =>
      throw _privateConstructorUsedError; //Whether or not to show input error messages
  bool? get showErrorMessages =>
      throw _privateConstructorUsedError; //Showing a progress indicator
  bool? get isSubmitting =>
      throw _privateConstructorUsedError; //Success or error backend response
  Option<Either<AuthFailure, Unit>>? get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress? emailAddress,
      RegisterPassword? password,
      Name? name,
      bool? showErrorMessages,
      bool? isSubmitting,
      Option<Either<AuthFailure, Unit>>? authFailureOrSuccessOption});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as RegisterPassword?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool?,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>?,
    ));
  }
}

/// @nodoc
abstract class _$$_SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$_SignUpStateCopyWith(
          _$_SignUpState value, $Res Function(_$_SignUpState) then) =
      __$$_SignUpStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress? emailAddress,
      RegisterPassword? password,
      Name? name,
      bool? showErrorMessages,
      bool? isSubmitting,
      Option<Either<AuthFailure, Unit>>? authFailureOrSuccessOption});
}

/// @nodoc
class __$$_SignUpStateCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$_SignUpStateCopyWith<$Res> {
  __$$_SignUpStateCopyWithImpl(
      _$_SignUpState _value, $Res Function(_$_SignUpState) _then)
      : super(_value, (v) => _then(v as _$_SignUpState));

  @override
  _$_SignUpState get _value => super._value as _$_SignUpState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_SignUpState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as RegisterPassword?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool?,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>?,
    ));
  }
}

/// @nodoc

class _$_SignUpState implements _SignUpState {
  const _$_SignUpState(
      {required this.emailAddress,
      required this.password,
      required this.name,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

//Validated all values
  @override
  final EmailAddress? emailAddress;
  @override
  final RegisterPassword? password;
  @override
  final Name? name;
//Whether or not to show input error messages
  @override
  final bool? showErrorMessages;
//Showing a progress indicator
  @override
  final bool? isSubmitting;
//Success or error backend response
  @override
  final Option<Either<AuthFailure, Unit>>? authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignUpState(emailAddress: $emailAddress, password: $password, name: $name, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpState &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(
                other.authFailureOrSuccessOption, authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(authFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      __$$_SignUpStateCopyWithImpl<_$_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {required final EmailAddress? emailAddress,
      required final RegisterPassword? password,
      required final Name? name,
      required final bool? showErrorMessages,
      required final bool? isSubmitting,
      required final Option<Either<AuthFailure, Unit>>?
          authFailureOrSuccessOption}) = _$_SignUpState;

  @override //Validated all values
  EmailAddress? get emailAddress => throw _privateConstructorUsedError;
  @override
  RegisterPassword? get password => throw _privateConstructorUsedError;
  @override
  Name? get name => throw _privateConstructorUsedError;
  @override //Whether or not to show input error messages
  bool? get showErrorMessages => throw _privateConstructorUsedError;
  @override //Showing a progress indicator
  bool? get isSubmitting => throw _privateConstructorUsedError;
  @override //Success or error backend response
  Option<Either<AuthFailure, Unit>>? get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
