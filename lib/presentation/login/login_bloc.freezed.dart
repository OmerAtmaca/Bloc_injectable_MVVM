// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  UsersModel? get userModel => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  bool get isPhoneValid => throw _privateConstructorUsedError;
  bool get isSign => throw _privateConstructorUsedError;
  StateType get stateType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {UsersModel? userModel,
      String email,
      String password,
      String error,
      String phoneNumber,
      bool isPhoneValid,
      bool isSign,
      StateType stateType});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = freezed,
    Object? email = null,
    Object? password = null,
    Object? error = null,
    Object? phoneNumber = null,
    Object? isPhoneValid = null,
    Object? isSign = null,
    Object? stateType = null,
  }) {
    return _then(_value.copyWith(
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UsersModel?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isPhoneValid: null == isPhoneValid
          ? _value.isPhoneValid
          : isPhoneValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isSign: null == isSign
          ? _value.isSign
          : isSign // ignore: cast_nullable_to_non_nullable
              as bool,
      stateType: null == stateType
          ? _value.stateType
          : stateType // ignore: cast_nullable_to_non_nullable
              as StateType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UsersModel? userModel,
      String email,
      String password,
      String error,
      String phoneNumber,
      bool isPhoneValid,
      bool isSign,
      StateType stateType});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = freezed,
    Object? email = null,
    Object? password = null,
    Object? error = null,
    Object? phoneNumber = null,
    Object? isPhoneValid = null,
    Object? isSign = null,
    Object? stateType = null,
  }) {
    return _then(_$_LoginState(
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UsersModel?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isPhoneValid: null == isPhoneValid
          ? _value.isPhoneValid
          : isPhoneValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isSign: null == isSign
          ? _value.isSign
          : isSign // ignore: cast_nullable_to_non_nullable
              as bool,
      stateType: null == stateType
          ? _value.stateType
          : stateType // ignore: cast_nullable_to_non_nullable
              as StateType,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {this.userModel,
      this.email = "",
      this.password = "",
      this.error = "",
      this.phoneNumber = "",
      this.isPhoneValid = false,
      this.isSign = false,
      this.stateType = StateType.initial});

  @override
  final UsersModel? userModel;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final bool isPhoneValid;
  @override
  @JsonKey()
  final bool isSign;
  @override
  @JsonKey()
  final StateType stateType;

  @override
  String toString() {
    return 'LoginState(userModel: $userModel, email: $email, password: $password, error: $error, phoneNumber: $phoneNumber, isPhoneValid: $isPhoneValid, isSign: $isSign, stateType: $stateType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isPhoneValid, isPhoneValid) ||
                other.isPhoneValid == isPhoneValid) &&
            (identical(other.isSign, isSign) || other.isSign == isSign) &&
            (identical(other.stateType, stateType) ||
                other.stateType == stateType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel, email, password,
      error, phoneNumber, isPhoneValid, isSign, stateType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final UsersModel? userModel,
      final String email,
      final String password,
      final String error,
      final String phoneNumber,
      final bool isPhoneValid,
      final bool isSign,
      final StateType stateType}) = _$_LoginState;

  @override
  UsersModel? get userModel;
  @override
  String get email;
  @override
  String get password;
  @override
  String get error;
  @override
  String get phoneNumber;
  @override
  bool get isPhoneValid;
  @override
  bool get isSign;
  @override
  StateType get stateType;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
