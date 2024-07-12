import 'package:tezda_app/common/utils/network_bound_resource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tezda_app/modules/product/data/models/product_response.dart';
import 'package:tezda_app/modules/product/presentation/viewmodel/product_listing_viewmodel.dart';

part 'product_search_ui_state.freezed.dart';

@freezed
class ProductSearchUiState with _$ProductSearchUiState {
  factory ProductSearchUiState({
    @Default(false) bool isLoading,
    @Default(false) bool isSearching,
    @Default(false) bool hasError,
    @Default(null) AppException? exception,
    @Default(null) List<ProductResponse>? data,
    @Default(null) List<ProductResponse>? searchData,
    @Default(0) int productCount,
  }) = _ProductSearchUiState;
}