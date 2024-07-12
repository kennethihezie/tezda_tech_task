// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResponseImpl _$$ProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductResponseImpl(
      id: json['id'] as num?,
      title: json['title'] as String?,
      price: json['price'] as num?,
      category: json['category'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      rating: json['rating'] == null
          ? null
          : RatingData.fromJson(json['rating'] as Map<String, dynamic>),
      isFavourite: json['isFavourite'] as bool? ?? false,
    );

Map<String, dynamic> _$$ProductResponseImplToJson(
        _$ProductResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'category': instance.category,
      'description': instance.description,
      'image': instance.image,
      'rating': instance.rating,
      'isFavourite': instance.isFavourite,
    };

_$RatingDataImpl _$$RatingDataImplFromJson(Map<String, dynamic> json) =>
    _$RatingDataImpl(
      rate: json['rate'] as num?,
      count: json['count'] as num?,
    );

Map<String, dynamic> _$$RatingDataImplToJson(_$RatingDataImpl instance) =>
    <String, dynamic>{
      'rate': instance.rate,
      'count': instance.count,
    };
