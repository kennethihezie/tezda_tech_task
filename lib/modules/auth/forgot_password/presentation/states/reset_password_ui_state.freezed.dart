// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResetPasswordUiState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  AppException? get exception => throw _privateConstructorUsedError;
  bool get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetPasswordUiStateCopyWith<ResetPasswordUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordUiStateCopyWith<$Res> {
  factory $ResetPasswordUiStateCopyWith(ResetPasswordUiState value,
          $Res Function(ResetPasswordUiState) then) =
      _$ResetPasswordUiStateCopyWithImpl<$Res, ResetPasswordUiState>;
  @useResult
  $Res call(
      {bool isLoading, bool hasError, AppException? exception, bool data});
}

/// @nodoc
class _$ResetPasswordUiStateCopyWithImpl<$Res,
        $Val extends ResetPasswordUiState>
    implements $ResetPasswordUiStateCopyWith<$Res> {
  _$ResetPasswordUiStateCopyWithImpl(this._value, this._then);

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
abstract class _$$ResetPasswordUiStateImplCopyWith<$Res>
    implements $ResetPasswordUiStateCopyWith<$Res> {
  factory _$$ResetPasswordUiStateImplCopyWith(_$ResetPasswordUiStateImpl value,
          $Res Function(_$ResetPasswordUiStateImpl) then) =
      __$$ResetPasswordUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, bool hasError, AppException? exception, bool data});
}

/// @nodoc
class __$$ResetPasswordUiStateImplCopyWithImpl<$Res>
    extends _$ResetPasswordUiStateCopyWithImpl<$Res, _$ResetPasswordUiStateImpl>
    implements _$$ResetPasswordUiStateImplCopyWith<$Res> {
  __$$ResetPasswordUiStateImplCopyWithImpl(_$ResetPasswordUiStateImpl _value,
      $Res Function(_$ResetPasswordUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? exception = freezed,
    Object? data = null,
  }) {
    return _then(_$ResetPasswordUiStateImpl(
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

class _$ResetPasswordUiStateImpl implements _ResetPasswordUiState {
  _$ResetPasswordUiStateImpl(
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
    return 'ResetPasswordUiState(isLoading: $isLoading, hasError: $hasError, exception: $exception, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordUiStateImpl &&
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
  _$$ResetPasswordUiStateImplCopyWith<_$ResetPasswordUiStateImpl>
      get copyWith =>
          __$$ResetPasswordUiStateImplCopyWithImpl<_$ResetPasswordUiStateImpl>(
              this, _$identity);
}

abstract class _ResetPasswordUiState implements ResetPasswordUiState {
  factory _ResetPasswordUiState(
      {final bool isLoading,
      final bool hasError,
      final AppException? exception,
      final bool data}) = _$ResetPasswordUiStateImpl;

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
  _$$ResetPasswordUiStateImplCopyWith<_$ResetPasswordUiStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
