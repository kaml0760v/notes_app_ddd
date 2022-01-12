// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInEventTearOff {
  const _$SignInEventTearOff();

  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

  RegisterWithEmailAndPasswordPressd registerWithEmailAndPasswordPressd() {
    return const RegisterWithEmailAndPasswordPressd();
  }

  SignInWithEmailAndPasswordPressd signInWithEmailAndPasswordPressd() {
    return const SignInWithEmailAndPasswordPressd();
  }

  SignInWithGooglePressd signInWithGooglePressd() {
    return const SignInWithGooglePressd();
  }
}

/// @nodoc
const $SignInEvent = _$SignInEventTearOff();

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressd,
    required TResult Function() signInWithEmailAndPasswordPressd,
    required TResult Function() signInWithGooglePressd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressd,
    TResult Function()? signInWithEmailAndPasswordPressd,
    TResult Function()? signInWithGooglePressd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressd,
    TResult Function()? signInWithEmailAndPasswordPressd,
    TResult Function()? signInWithGooglePressd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressd value)
        registerWithEmailAndPasswordPressd,
    required TResult Function(SignInWithEmailAndPasswordPressd value)
        signInWithEmailAndPasswordPressd,
    required TResult Function(SignInWithGooglePressd value)
        signInWithGooglePressd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressd value)?
        registerWithEmailAndPasswordPressd,
    TResult Function(SignInWithEmailAndPasswordPressd value)?
        signInWithEmailAndPasswordPressd,
    TResult Function(SignInWithGooglePressd value)? signInWithGooglePressd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressd value)?
        registerWithEmailAndPasswordPressd,
    TResult Function(SignInWithEmailAndPasswordPressd value)?
        signInWithEmailAndPasswordPressd,
    TResult Function(SignInWithGooglePressd value)? signInWithGooglePressd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res> implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  final SignInEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SignInEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailChanged &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressd,
    required TResult Function() signInWithEmailAndPasswordPressd,
    required TResult Function() signInWithGooglePressd,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressd,
    TResult Function()? signInWithEmailAndPasswordPressd,
    TResult Function()? signInWithGooglePressd,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressd,
    TResult Function()? signInWithEmailAndPasswordPressd,
    TResult Function()? signInWithGooglePressd,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressd value)
        registerWithEmailAndPasswordPressd,
    required TResult Function(SignInWithEmailAndPasswordPressd value)
        signInWithEmailAndPasswordPressd,
    required TResult Function(SignInWithGooglePressd value)
        signInWithGooglePressd,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressd value)?
        registerWithEmailAndPasswordPressd,
    TResult Function(SignInWithEmailAndPasswordPressd value)?
        signInWithEmailAndPasswordPressd,
    TResult Function(SignInWithGooglePressd value)? signInWithGooglePressd,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressd value)?
        registerWithEmailAndPasswordPressd,
    TResult Function(SignInWithEmailAndPasswordPressd value)?
        signInWithEmailAndPasswordPressd,
    TResult Function(SignInWithGooglePressd value)? signInWithGooglePressd,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(PasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordChanged &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressd,
    required TResult Function() signInWithEmailAndPasswordPressd,
    required TResult Function() signInWithGooglePressd,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressd,
    TResult Function()? signInWithEmailAndPasswordPressd,
    TResult Function()? signInWithGooglePressd,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressd,
    TResult Function()? signInWithEmailAndPasswordPressd,
    TResult Function()? signInWithGooglePressd,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressd value)
        registerWithEmailAndPasswordPressd,
    required TResult Function(SignInWithEmailAndPasswordPressd value)
        signInWithEmailAndPasswordPressd,
    required TResult Function(SignInWithGooglePressd value)
        signInWithGooglePressd,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressd value)?
        registerWithEmailAndPasswordPressd,
    TResult Function(SignInWithEmailAndPasswordPressd value)?
        signInWithEmailAndPasswordPressd,
    TResult Function(SignInWithGooglePressd value)? signInWithGooglePressd,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressd value)?
        registerWithEmailAndPasswordPressd,
    TResult Function(SignInWithEmailAndPasswordPressd value)?
        signInWithEmailAndPasswordPressd,
    TResult Function(SignInWithGooglePressd value)? signInWithGooglePressd,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterWithEmailAndPasswordPressdCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordPressdCopyWith(
          RegisterWithEmailAndPasswordPressd value,
          $Res Function(RegisterWithEmailAndPasswordPressd) then) =
      _$RegisterWithEmailAndPasswordPressdCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterWithEmailAndPasswordPressdCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPasswordPressdCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordPressdCopyWithImpl(
      RegisterWithEmailAndPasswordPressd _value,
      $Res Function(RegisterWithEmailAndPasswordPressd) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPasswordPressd));

  @override
  RegisterWithEmailAndPasswordPressd get _value =>
      super._value as RegisterWithEmailAndPasswordPressd;
}

/// @nodoc

class _$RegisterWithEmailAndPasswordPressd
    implements RegisterWithEmailAndPasswordPressd {
  const _$RegisterWithEmailAndPasswordPressd();

  @override
  String toString() {
    return 'SignInEvent.registerWithEmailAndPasswordPressd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterWithEmailAndPasswordPressd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressd,
    required TResult Function() signInWithEmailAndPasswordPressd,
    required TResult Function() signInWithGooglePressd,
  }) {
    return registerWithEmailAndPasswordPressd();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressd,
    TResult Function()? signInWithEmailAndPasswordPressd,
    TResult Function()? signInWithGooglePressd,
  }) {
    return registerWithEmailAndPasswordPressd?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressd,
    TResult Function()? signInWithEmailAndPasswordPressd,
    TResult Function()? signInWithGooglePressd,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressd != null) {
      return registerWithEmailAndPasswordPressd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressd value)
        registerWithEmailAndPasswordPressd,
    required TResult Function(SignInWithEmailAndPasswordPressd value)
        signInWithEmailAndPasswordPressd,
    required TResult Function(SignInWithGooglePressd value)
        signInWithGooglePressd,
  }) {
    return registerWithEmailAndPasswordPressd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressd value)?
        registerWithEmailAndPasswordPressd,
    TResult Function(SignInWithEmailAndPasswordPressd value)?
        signInWithEmailAndPasswordPressd,
    TResult Function(SignInWithGooglePressd value)? signInWithGooglePressd,
  }) {
    return registerWithEmailAndPasswordPressd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressd value)?
        registerWithEmailAndPasswordPressd,
    TResult Function(SignInWithEmailAndPasswordPressd value)?
        signInWithEmailAndPasswordPressd,
    TResult Function(SignInWithGooglePressd value)? signInWithGooglePressd,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressd != null) {
      return registerWithEmailAndPasswordPressd(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasswordPressd implements SignInEvent {
  const factory RegisterWithEmailAndPasswordPressd() =
      _$RegisterWithEmailAndPasswordPressd;
}

/// @nodoc
abstract class $SignInWithEmailAndPasswordPressdCopyWith<$Res> {
  factory $SignInWithEmailAndPasswordPressdCopyWith(
          SignInWithEmailAndPasswordPressd value,
          $Res Function(SignInWithEmailAndPasswordPressd) then) =
      _$SignInWithEmailAndPasswordPressdCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithEmailAndPasswordPressdCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $SignInWithEmailAndPasswordPressdCopyWith<$Res> {
  _$SignInWithEmailAndPasswordPressdCopyWithImpl(
      SignInWithEmailAndPasswordPressd _value,
      $Res Function(SignInWithEmailAndPasswordPressd) _then)
      : super(_value, (v) => _then(v as SignInWithEmailAndPasswordPressd));

  @override
  SignInWithEmailAndPasswordPressd get _value =>
      super._value as SignInWithEmailAndPasswordPressd;
}

/// @nodoc

class _$SignInWithEmailAndPasswordPressd
    implements SignInWithEmailAndPasswordPressd {
  const _$SignInWithEmailAndPasswordPressd();

  @override
  String toString() {
    return 'SignInEvent.signInWithEmailAndPasswordPressd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInWithEmailAndPasswordPressd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressd,
    required TResult Function() signInWithEmailAndPasswordPressd,
    required TResult Function() signInWithGooglePressd,
  }) {
    return signInWithEmailAndPasswordPressd();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressd,
    TResult Function()? signInWithEmailAndPasswordPressd,
    TResult Function()? signInWithGooglePressd,
  }) {
    return signInWithEmailAndPasswordPressd?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressd,
    TResult Function()? signInWithEmailAndPasswordPressd,
    TResult Function()? signInWithGooglePressd,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasswordPressd != null) {
      return signInWithEmailAndPasswordPressd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressd value)
        registerWithEmailAndPasswordPressd,
    required TResult Function(SignInWithEmailAndPasswordPressd value)
        signInWithEmailAndPasswordPressd,
    required TResult Function(SignInWithGooglePressd value)
        signInWithGooglePressd,
  }) {
    return signInWithEmailAndPasswordPressd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressd value)?
        registerWithEmailAndPasswordPressd,
    TResult Function(SignInWithEmailAndPasswordPressd value)?
        signInWithEmailAndPasswordPressd,
    TResult Function(SignInWithGooglePressd value)? signInWithGooglePressd,
  }) {
    return signInWithEmailAndPasswordPressd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressd value)?
        registerWithEmailAndPasswordPressd,
    TResult Function(SignInWithEmailAndPasswordPressd value)?
        signInWithEmailAndPasswordPressd,
    TResult Function(SignInWithGooglePressd value)? signInWithGooglePressd,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasswordPressd != null) {
      return signInWithEmailAndPasswordPressd(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPasswordPressd implements SignInEvent {
  const factory SignInWithEmailAndPasswordPressd() =
      _$SignInWithEmailAndPasswordPressd;
}

/// @nodoc
abstract class $SignInWithGooglePressdCopyWith<$Res> {
  factory $SignInWithGooglePressdCopyWith(SignInWithGooglePressd value,
          $Res Function(SignInWithGooglePressd) then) =
      _$SignInWithGooglePressdCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithGooglePressdCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $SignInWithGooglePressdCopyWith<$Res> {
  _$SignInWithGooglePressdCopyWithImpl(SignInWithGooglePressd _value,
      $Res Function(SignInWithGooglePressd) _then)
      : super(_value, (v) => _then(v as SignInWithGooglePressd));

  @override
  SignInWithGooglePressd get _value => super._value as SignInWithGooglePressd;
}

/// @nodoc

class _$SignInWithGooglePressd implements SignInWithGooglePressd {
  const _$SignInWithGooglePressd();

  @override
  String toString() {
    return 'SignInEvent.signInWithGooglePressd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignInWithGooglePressd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressd,
    required TResult Function() signInWithEmailAndPasswordPressd,
    required TResult Function() signInWithGooglePressd,
  }) {
    return signInWithGooglePressd();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressd,
    TResult Function()? signInWithEmailAndPasswordPressd,
    TResult Function()? signInWithGooglePressd,
  }) {
    return signInWithGooglePressd?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressd,
    TResult Function()? signInWithEmailAndPasswordPressd,
    TResult Function()? signInWithGooglePressd,
    required TResult orElse(),
  }) {
    if (signInWithGooglePressd != null) {
      return signInWithGooglePressd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressd value)
        registerWithEmailAndPasswordPressd,
    required TResult Function(SignInWithEmailAndPasswordPressd value)
        signInWithEmailAndPasswordPressd,
    required TResult Function(SignInWithGooglePressd value)
        signInWithGooglePressd,
  }) {
    return signInWithGooglePressd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressd value)?
        registerWithEmailAndPasswordPressd,
    TResult Function(SignInWithEmailAndPasswordPressd value)?
        signInWithEmailAndPasswordPressd,
    TResult Function(SignInWithGooglePressd value)? signInWithGooglePressd,
  }) {
    return signInWithGooglePressd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressd value)?
        registerWithEmailAndPasswordPressd,
    TResult Function(SignInWithEmailAndPasswordPressd value)?
        signInWithEmailAndPasswordPressd,
    TResult Function(SignInWithGooglePressd value)? signInWithGooglePressd,
    required TResult orElse(),
  }) {
    if (signInWithGooglePressd != null) {
      return signInWithGooglePressd(this);
    }
    return orElse();
  }
}

abstract class SignInWithGooglePressd implements SignInEvent {
  const factory SignInWithGooglePressd() = _$SignInWithGooglePressd;
}

/// @nodoc
class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  _SignInState call(
      {required EmailAddress email,
      required Password password,
      required AutovalidateMode autoValidateMode,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccess}) {
    return _SignInState(
      email: email,
      password: password,
      autoValidateMode: autoValidateMode,
      isSubmitting: isSubmitting,
      authFailureOrSuccess: authFailureOrSuccess,
    );
  }
}

/// @nodoc
const $SignInState = _$SignInStateTearOff();

/// @nodoc
mixin _$SignInState {
  EmailAddress get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  AutovalidateMode get autoValidateMode => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress email,
      Password password,
      AutovalidateMode autoValidateMode,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? autoValidateMode = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      autoValidateMode: autoValidateMode == freezed
          ? _value.autoValidateMode
          : autoValidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(
          _SignInState value, $Res Function(_SignInState) then) =
      __$SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress email,
      Password password,
      AutovalidateMode autoValidateMode,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class __$SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$SignInStateCopyWith<$Res> {
  __$SignInStateCopyWithImpl(
      _SignInState _value, $Res Function(_SignInState) _then)
      : super(_value, (v) => _then(v as _SignInState));

  @override
  _SignInState get _value => super._value as _SignInState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? autoValidateMode = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_SignInState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      autoValidateMode: autoValidateMode == freezed
          ? _value.autoValidateMode
          : autoValidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState(
      {required this.email,
      required this.password,
      required this.autoValidateMode,
      required this.isSubmitting,
      required this.authFailureOrSuccess});

  @override
  final EmailAddress email;
  @override
  final Password password;
  @override
  final AutovalidateMode autoValidateMode;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccess;

  @override
  String toString() {
    return 'SignInState(email: $email, password: $password, autoValidateMode: $autoValidateMode, isSubmitting: $isSubmitting, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.autoValidateMode, autoValidateMode) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality()
                .equals(other.authFailureOrSuccess, authFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(autoValidateMode),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(authFailureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
          {required EmailAddress email,
          required Password password,
          required AutovalidateMode autoValidateMode,
          required bool isSubmitting,
          required Option<Either<AuthFailure, Unit>> authFailureOrSuccess}) =
      _$_SignInState;

  @override
  EmailAddress get email;
  @override
  Password get password;
  @override
  AutovalidateMode get autoValidateMode;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
