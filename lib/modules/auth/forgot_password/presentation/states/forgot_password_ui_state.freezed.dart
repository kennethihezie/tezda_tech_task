// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgotPasswordUiState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  AppException? get exception => throw _privateConstructorUsedError;
  bool get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordUiStateCopyWith<ForgotPasswordUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordUiStateCopyWith<$Res> {
  factory $ForgotPasswordUiStateCopyWith(ForgotPasswordUiState value,
          $Res Function(ForgotPasswordUiState) then) =
      _$ForgotPasswordUiStateCopyWithImpl<$Res, ForgotPasswordUiState>;
  @useResult
  $Res call(
      {bool isLoading, bool hasError, AppException? exception, bool data});
}

/// @nodoc
class _$ForgotPasswordUiStateCopyWithImpl<$Res,
        $Val extends ForgotPasswordUiState>
    implements $ForgotPasswordUiStateCopyWith<$Res> {
  _$ForgotPasswordUiStateCopyWithImpl(this._value, this._then);

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
    Object? data = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPasswordUiStateImplCopyWith<$Res>
    implements $ForgotPasswordUiStateCopyWith<$Res> {
  factory _$$ForgotPasswordUiStateImplCopyWith(
          _$ForgotPasswordUiStateImpl value,
          $Res Function(_$ForgotPasswordUiStateImpl) then) =
      __$$ForgotPasswordUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, bool hasError, AppException? exception, bool data});
}

/// @nodoc
class __$$ForgotPasswordUiStateImplCopyWithImpl<$Res>
    extends _$ForgotPasswordUiStateCopyWithImpl<$Res,
        _$ForgotPasswordUiStateImpl>
    implements _$$ForgotPasswordUiStateImplCopyWith<$Res> {
  __$$ForgotPasswordUiStateImplCopyWithImpl(_$ForgotPasswordUiStateImpl _value,
      $Res Function(_$ForgotPasswordUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? exception = freezed,
    Object? data = null,
  }) {
    return _then(_$ForgotPasswordUiStateImpl(
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordUiStateImpl implements _ForgotPasswordUiState {
  _$ForgotPasswordUiStateImpl(
      {this.isLoading = false,
      this.hasError = false,
      this.exception = null,
      this.data = false});

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
  final bool data;

  @override
  String toString() {
    return 'ForgotPasswordUiState(isLoading: $isLoading, hasError: $hasError, exception: $exception, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordUiStateImpl &&
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
  _$$ForgotPasswordUiStateImplCopyWith<_$ForgotPasswordUiStateImpl>
      get copyWith => __$$ForgotPasswordUiStateImplCopyWithImpl<
          _$ForgotPasswordUiStateImpl>(this, _$identity);
}

abstract class _ForgotPasswordUiState implements ForgotPasswordUiState {
  factory _ForgotPasswordUiState(
      {final bool isLoading,
      final bool hasError,
      final AppException? exception,
      final bool data}) = _$ForgotPasswordUiStateImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  AppException? get exception;
  @override
  bool get data;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPasswordUiStateImplCopyWith<_$ForgotPasswordUiStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
