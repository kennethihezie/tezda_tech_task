// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_search_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductSearchUiState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  AppException? get exception => throw _privateConstructorUsedError;
  List<ProductResponse>? get data => throw _privateConstructorUsedError;
  List<ProductResponse>? get searchData => throw _privateConstructorUsedError;
  int get productCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductSearchUiStateCopyWith<ProductSearchUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSearchUiStateCopyWith<$Res> {
  factory $ProductSearchUiStateCopyWith(ProductSearchUiState value,
          $Res Function(ProductSearchUiState) then) =
      _$ProductSearchUiStateCopyWithImpl<$Res, ProductSearchUiState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isSearching,
      bool hasError,
      AppException? exception,
      List<ProductResponse>? data,
      List<ProductResponse>? searchData,
      int productCount});
}

/// @nodoc
class _$ProductSearchUiStateCopyWithImpl<$Res,
        $Val extends ProductSearchUiState>
    implements $ProductSearchUiStateCopyWith<$Res> {
  _$ProductSearchUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSearching = null,
    Object? hasError = null,
    Object? exception = freezed,
    Object? data = freezed,
    Object? searchData = freezed,
    Object? productCount = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
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
              as List<ProductResponse>?,
      searchData: freezed == searchData
          ? _value.searchData
          : searchData // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>?,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductSearchUiStateImplCopyWith<$Res>
    implements $ProductSearchUiStateCopyWith<$Res> {
  factory _$$ProductSearchUiStateImplCopyWith(_$ProductSearchUiStateImpl value,
          $Res Function(_$ProductSearchUiStateImpl) then) =
      __$$ProductSearchUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isSearching,
      bool hasError,
      AppException? exception,
      List<ProductResponse>? data,
      List<ProductResponse>? searchData,
      int productCount});
}

/// @nodoc
class __$$ProductSearchUiStateImplCopyWithImpl<$Res>
    extends _$ProductSearchUiStateCopyWithImpl<$Res, _$ProductSearchUiStateImpl>
    implements _$$ProductSearchUiStateImplCopyWith<$Res> {
  __$$ProductSearchUiStateImplCopyWithImpl(_$ProductSearchUiStateImpl _value,
      $Res Function(_$ProductSearchUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSearching = null,
    Object? hasError = null,
    Object? exception = freezed,
    Object? data = freezed,
    Object? searchData = freezed,
    Object? productCount = null,
  }) {
    return _then(_$ProductSearchUiStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
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
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>?,
      searchData: freezed == searchData
          ? _value._searchData
          : searchData // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>?,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProductSearchUiStateImpl implements _ProductSearchUiState {
  _$ProductSearchUiStateImpl(
      {this.isLoading = false,
      this.isSearching = false,
      this.hasError = false,
      this.exception = null,
      final List<ProductResponse>? data = null,
      final List<ProductResponse>? searchData = null,
      this.productCount = 0})
      : _data = data,
        _searchData = searchData;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSearching;
  @override
  @JsonKey()
  final bool hasError;
  @override
  @JsonKey()
  final AppException? exception;
  final List<ProductResponse>? _data;
  @override
  @JsonKey()
  List<ProductResponse>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductResponse>? _searchData;
  @override
  @JsonKey()
  List<ProductResponse>? get searchData {
    final value = _searchData;
    if (value == null) return null;
    if (_searchData is EqualUnmodifiableListView) return _searchData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int productCount;

  @override
  String toString() {
    return 'ProductSearchUiState(isLoading: $isLoading, isSearching: $isSearching, hasError: $hasError, exception: $exception, data: $data, searchData: $searchData, productCount: $productCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSearchUiStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other._searchData, _searchData) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isSearching,
      hasError,
      exception,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_searchData),
      productCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSearchUiStateImplCopyWith<_$ProductSearchUiStateImpl>
      get copyWith =>
          __$$ProductSearchUiStateImplCopyWithImpl<_$ProductSearchUiStateImpl>(
              this, _$identity);
}

abstract class _ProductSearchUiState implements ProductSearchUiState {
  factory _ProductSearchUiState(
      {final bool isLoading,
      final bool isSearching,
      final bool hasError,
      final AppException? exception,
      final List<ProductResponse>? data,
      final List<ProductResponse>? searchData,
      final int productCount}) = _$ProductSearchUiStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isSearching;
  @override
  bool get hasError;
  @override
  AppException? get exception;
  @override
  List<ProductResponse>? get data;
  @override
  List<ProductResponse>? get searchData;
  @override
  int get productCount;
  @override
  @JsonKey(ignore: true)
  _$$ProductSearchUiStateImplCopyWith<_$ProductSearchUiStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
