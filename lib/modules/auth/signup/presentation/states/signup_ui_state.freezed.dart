// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignupUiState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  AppException? get exception => throw _privateConstructorUsedError;
  SignupPayload? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupUiStateCopyWith<SignupUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupUiStateCopyWith<$Res> {
  factory $SignupUiStateCopyWith(
          SignupUiState value, $Res Function(SignupUiState) then) =
      _$SignupUiStateCopyWithImpl<$Res, SignupUiState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      AppException? exception,
      SignupPayload? data});
}

/// @nodoc
class _$SignupUiStateCopyWithImpl<$Res, $Val extends SignupUiState>
    implements $SignupUiStateCopyWith<$Res> {
  _$SignupUiStateCopyWithImpl(this._value, this._then);

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
abstract class _$$SignupUiStateImplCopyWith<$Res>
    implements $SignupUiStateCopyWith<$Res> {
  factory _$$SignupUiStateImplCopyWith(
          _$SignupUiStateImpl value, $Res Function(_$SignupUiStateImpl) then) =
      __$$SignupUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      AppException? exception,
      SignupPayload? data});
}

/// @nodoc
class __$$SignupUiStateImplCopyWithImpl<$Res>
    extends _$SignupUiStateCopyWithImpl<$Res, _$SignupUiStateImpl>
    implements _$$SignupUiStateImplCopyWith<$Res> {
  __$$SignupUiStateImplCopyWithImpl(
      _$SignupUiStateImpl _value, $Res Function(_$SignupUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? exception = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SignupUiStateImpl(
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

class _$SignupUiStateImpl implements _SignupUiState {
  _$SignupUiStateImpl(
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
    return 'SignupUiState(isLoading: $isLoading, hasError: $hasError, exception: $exception, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupUiStateImpl &&
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
  _$$SignupUiStateImplCopyWith<_$SignupUiStateImpl> get copyWith =>
      __$$SignupUiStateImplCopyWithImpl<_$SignupUiStateImpl>(this, _$identity);
}

abstract class _SignupUiState implements SignupUiState {
  factory _SignupUiState(
      {final bool isLoading,
      final bool hasError,
      final AppException? exception,
      final SignupPayload? data}) = _$SignupUiStateImpl;

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
  _$$SignupUiStateImplCopyWith<_$SignupUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
