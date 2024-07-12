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
      'isFavourite': instance.isFavourite,
    };
