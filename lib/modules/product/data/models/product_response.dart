import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_response.freezed.dart';
part 'product_response.g.dart';


@freezed
abstract class ProductResponse with _$ProductResponse {
  const factory ProductResponse({
    @JsonKey(name: 'id') num? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'price') num? price,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'image') String? image,
    @Default(false) bool? isFavourite,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}