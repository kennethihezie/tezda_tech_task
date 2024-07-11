// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductDetailUiState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  AppException? get exception => throw _privateConstructorUsedError;
  ProductResponse? get product => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailUiStateCopyWith<ProductDetailUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailUiStateCopyWith<$Res> {
  factory $ProductDetailUiStateCopyWith(ProductDetailUiState value,
          $Res Function(ProductDetailUiState) then) =
      _$ProductDetailUiStateCopyWithImpl<$Res, ProductDetailUiState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      AppException? exception,
      ProductResponse? product});

  $ProductResponseCopyWith<$Res>? get product;
}

/// @nodoc
class _$ProductDetailUiStateCopyWithImpl<$Res,
        $Val extends ProductDetailUiState>
    implements $ProductDetailUiStateCopyWith<$Res> {
  _$ProductDetailUiStateCopyWithImpl(this._value, this._then);

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
    Object? product = freezed,
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
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductResponseCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductResponseCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailUiStateImplCopyWith<$Res>
    implements $ProductDetailUiStateCopyWith<$Res> {
  factory _$$ProductDetailUiStateImplCopyWith(_$ProductDetailUiStateImpl value,
          $Res Function(_$ProductDetailUiStateImpl) then) =
      __$$ProductDetailUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      AppException? exception,
      ProductResponse? product});

  @override
  $ProductResponseCopyWith<$Res>? get product;
}

/// @nodoc
class __$$ProductDetailUiStateImplCopyWithImpl<$Res>
    extends _$ProductDetailUiStateCopyWithImpl<$Res, _$ProductDetailUiStateImpl>
    implements _$$ProductDetailUiStateImplCopyWith<$Res> {
  __$$ProductDetailUiStateImplCopyWithImpl(_$ProductDetailUiStateImpl _value,
      $Res Function(_$ProductDetailUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? exception = freezed,
    Object? product = freezed,
  }) {
    return _then(_$ProductDetailUiStateImpl(
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
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductResponse?,
    ));
  }
}

/// @nodoc

class _$ProductDetailUiStateImpl implements _ProductDetailUiState {
  _$ProductDetailUiStateImpl(
      {this.isLoading = false,
      this.hasError = false,
      this.exception = null,
      this.product = null});

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
  final ProductResponse? product;

  @override
  String toString() {
    return 'ProductDetailUiState(isLoading: $isLoading, hasError: $hasError, exception: $exception, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailUiStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, hasError, exception, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailUiStateImplCopyWith<_$ProductDetailUiStateImpl>
      get copyWith =>
          __$$ProductDetailUiStateImplCopyWithImpl<_$ProductDetailUiStateImpl>(
              this, _$identity);
}

abstract class _ProductDetailUiState implements ProductDetailUiState {
  factory _ProductDetailUiState(
      {final bool isLoading,
      final bool hasError,
      final AppException? exception,
      final ProductResponse? product}) = _$ProductDetailUiStateImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  AppException? get exception;
  @override
  ProductResponse? get product;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailUiStateImplCopyWith<_$ProductDetailUiStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
