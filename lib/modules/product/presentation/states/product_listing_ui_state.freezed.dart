// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_listing_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductListingUiState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  AppException? get exception => throw _privateConstructorUsedError;
  ProductListingData? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductListingUiStateCopyWith<ProductListingUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListingUiStateCopyWith<$Res> {
  factory $ProductListingUiStateCopyWith(ProductListingUiState value,
          $Res Function(ProductListingUiState) then) =
      _$ProductListingUiStateCopyWithImpl<$Res, ProductListingUiState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      AppException? exception,
      ProductListingData? data});
}

/// @nodoc
class _$ProductListingUiStateCopyWithImpl<$Res,
        $Val extends ProductListingUiState>
    implements $ProductListingUiStateCopyWith<$Res> {
  _$ProductListingUiStateCopyWithImpl(this._value, this._then);

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
              as ProductListingData?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductListingUiStateImplCopyWith<$Res>
    implements $ProductListingUiStateCopyWith<$Res> {
  factory _$$ProductListingUiStateImplCopyWith(
          _$ProductListingUiStateImpl value,
          $Res Function(_$ProductListingUiStateImpl) then) =
      __$$ProductListingUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      AppException? exception,
      ProductListingData? data});
}

/// @nodoc
class __$$ProductListingUiStateImplCopyWithImpl<$Res>
    extends _$ProductListingUiStateCopyWithImpl<$Res,
        _$ProductListingUiStateImpl>
    implements _$$ProductListingUiStateImplCopyWith<$Res> {
  __$$ProductListingUiStateImplCopyWithImpl(_$ProductListingUiStateImpl _value,
      $Res Function(_$ProductListingUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? exception = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ProductListingUiStateImpl(
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
              as ProductListingData?,
    ));
  }
}

/// @nodoc

class _$ProductListingUiStateImpl implements _ProductListingUiState {
  _$ProductListingUiStateImpl(
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
  final ProductListingData? data;

  @override
  String toString() {
    return 'ProductListingUiState(isLoading: $isLoading, hasError: $hasError, exception: $exception, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListingUiStateImpl &&
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
  _$$ProductListingUiStateImplCopyWith<_$ProductListingUiStateImpl>
      get copyWith => __$$ProductListingUiStateImplCopyWithImpl<
          _$ProductListingUiStateImpl>(this, _$identity);
}

abstract class _ProductListingUiState implements ProductListingUiState {
  factory _ProductListingUiState(
      {final bool isLoading,
      final bool hasError,
      final AppException? exception,
      final ProductListingData? data}) = _$ProductListingUiStateImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  AppException? get exception;
  @override
  ProductListingData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ProductListingUiStateImplCopyWith<_$ProductListingUiStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
