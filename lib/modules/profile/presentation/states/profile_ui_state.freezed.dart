// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileUiState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  AppException? get exception => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileUiStateCopyWith<ProfileUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileUiStateCopyWith<$Res> {
  factory $ProfileUiStateCopyWith(
          ProfileUiState value, $Res Function(ProfileUiState) then) =
      _$ProfileUiStateCopyWithImpl<$Res, ProfileUiState>;
  @useResult
  $Res call(
      {bool isLoading, bool hasError, AppException? exception, User? user});
}

/// @nodoc
class _$ProfileUiStateCopyWithImpl<$Res, $Val extends ProfileUiState>
    implements $ProfileUiStateCopyWith<$Res> {
  _$ProfileUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? exception = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as AppException?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileUiStateImplCopyWith<$Res>
    implements $ProfileUiStateCopyWith<$Res> {
  factory _$$ProfileUiStateImplCopyWith(_$ProfileUiStateImpl value,
          $Res Function(_$ProfileUiStateImpl) then) =
      __$$ProfileUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, bool hasError, AppException? exception, User? user});
}

/// @nodoc
class __$$ProfileUiStateImplCopyWithImpl<$Res>
    extends _$ProfileUiStateCopyWithImpl<$Res, _$ProfileUiStateImpl>
    implements _$$ProfileUiStateImplCopyWith<$Res> {
  __$$ProfileUiStateImplCopyWithImpl(
      _$ProfileUiStateImpl _value, $Res Function(_$ProfileUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? exception = freezed,
    Object? user = freezed,
  }) {
    return _then(_$ProfileUiStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as AppException?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$ProfileUiStateImpl implements _ProfileUiState {
  _$ProfileUiStateImpl(
      {this.isLoading = false,
      this.hasError = false,
      this.exception = null,
      this.user = null});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasError;
  @override
  @JsonKey()
  final AppException? exception;
  @override
  @JsonKey()
  final User? user;

  @override
  String toString() {
    return 'ProfileUiState(isLoading: $isLoading, hasError: $hasError, exception: $exception, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileUiStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, hasError, exception, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileUiStateImplCopyWith<_$ProfileUiStateImpl> get copyWith =>
      __$$ProfileUiStateImplCopyWithImpl<_$ProfileUiStateImpl>(
          this, _$identity);
}

abstract class _ProfileUiState implements ProfileUiState {
  factory _ProfileUiState(
      {final bool isLoading,
      final bool hasError,
      final AppException? exception,
      final User? user}) = _$ProfileUiStateImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  AppException? get exception;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$ProfileUiStateImplCopyWith<_$ProfileUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
