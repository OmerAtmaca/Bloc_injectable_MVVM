// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnBoardingState {
  int get currentPage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnBoardingStateCopyWith<OnBoardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBoardingStateCopyWith<$Res> {
  factory $OnBoardingStateCopyWith(
          OnBoardingState value, $Res Function(OnBoardingState) then) =
      _$OnBoardingStateCopyWithImpl<$Res, OnBoardingState>;
  @useResult
  $Res call({int currentPage, bool isLoading});
}

/// @nodoc
class _$OnBoardingStateCopyWithImpl<$Res, $Val extends OnBoardingState>
    implements $OnBoardingStateCopyWith<$Res> {
  _$OnBoardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OnBoardingStateCopyWith<$Res>
    implements $OnBoardingStateCopyWith<$Res> {
  factory _$$_OnBoardingStateCopyWith(
          _$_OnBoardingState value, $Res Function(_$_OnBoardingState) then) =
      __$$_OnBoardingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentPage, bool isLoading});
}

/// @nodoc
class __$$_OnBoardingStateCopyWithImpl<$Res>
    extends _$OnBoardingStateCopyWithImpl<$Res, _$_OnBoardingState>
    implements _$$_OnBoardingStateCopyWith<$Res> {
  __$$_OnBoardingStateCopyWithImpl(
      _$_OnBoardingState _value, $Res Function(_$_OnBoardingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? isLoading = null,
  }) {
    return _then(_$_OnBoardingState(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_OnBoardingState implements _OnBoardingState {
  const _$_OnBoardingState({required this.currentPage, this.isLoading = false});

  @override
  final int currentPage;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'OnBoardingState(currentPage: $currentPage, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnBoardingState &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnBoardingStateCopyWith<_$_OnBoardingState> get copyWith =>
      __$$_OnBoardingStateCopyWithImpl<_$_OnBoardingState>(this, _$identity);
}

abstract class _OnBoardingState implements OnBoardingState {
  const factory _OnBoardingState(
      {required final int currentPage,
      final bool isLoading}) = _$_OnBoardingState;

  @override
  int get currentPage;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_OnBoardingStateCopyWith<_$_OnBoardingState> get copyWith =>
      throw _privateConstructorUsedError;
}
