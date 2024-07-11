// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginUiState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  AppException? get exception => throw _privateConstructorUsedError;
  SignupPayload? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginUiStateCopyWith<LoginUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUiStateCopyWith<$Res> {
  factory $LoginUiStateCopyWith(
          LoginUiState value, $Res Function(LoginUiState) then) =
      _$LoginUiStateCopyWithImpl<$Res, LoginUiState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      AppException? exception,
      SignupPayload? data});
}

/// @nodoc
class _$LoginUiStateCopyWithImpl<$Res, $Val extends LoginUiState>
    implements $LoginUiStateCopyWith<$Res> {
  _$LoginUiStateCopyWithImpl(this._value, this._then);

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
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignupPayload?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginUiStateImplCopyWith<$Res>
    implements $LoginUiStateCopyWith<$Res> {
  factory _$$LoginUiStateImplCopyWith(
          _$LoginUiStateImpl value, $Res Function(_$LoginUiStateImpl) then) =
      __$$LoginUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      AppException? exception,
      SignupPayload? data});
}

/// @nodoc
class __$$LoginUiStateImplCopyWithImpl<$Res>
    extends _$LoginUiStateCopyWithImpl<$Res, _$LoginUiStateImpl>
    implements _$$LoginUiStateImplCopyWith<$Res> {
  __$$LoginUiStateImplCopyWithImpl(
      _$LoginUiStateImpl _value, $Res Function(_$LoginUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? exception = freezed,
    Object? data = freezed,
  }) {
    return _then(_$LoginUiStateImpl(
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignupPayload?,
    ));
  }
}

/// @nodoc

class _$LoginUiStateImpl implements _LoginUiState {
  _$LoginUiStateImpl(
      {this.isLoading = false,
      this.hasError = false,
      this.exception = null,
      this.data = null});

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
  final SignupPayload? data;

  @override
  String toString() {
    return 'LoginUiState(isLoading: $isLoading, hasError: $hasError, exception: $exception, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUiStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, hasError, exception, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUiStateImplCopyWith<_$LoginUiStateImpl> get copyWith =>
      __$$LoginUiStateImplCopyWithImpl<_$LoginUiStateImpl>(this, _$identity);
}

abstract class _LoginUiState implements LoginUiState {
  factory _LoginUiState(
      {final bool isLoading,
      final bool hasError,
      final AppException? exception,
      final SignupPayload? data}) = _$LoginUiStateImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  AppException? get exception;
  @override
  SignupPayload? get data;
  @override
  @JsonKey(ignore: true)
  _$$LoginUiStateImplCopyWith<_$LoginUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
