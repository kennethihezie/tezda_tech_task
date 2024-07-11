import 'package:tezda_app/common/utils/network_bound_resource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tezda_app/modules/product/data/models/product_response.dart';

part 'product_detail_ui_state.freezed.dart';

@freezed
class ProductDetailUiState with _$ProductDetailUiState {
  factory ProductDetailUiState({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default(null) AppException? exception,
    @Default(null) ProductResponse? product,
  }) = _ProductDetailUiState;
}