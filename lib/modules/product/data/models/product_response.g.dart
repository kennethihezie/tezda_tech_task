// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResponseImpl _$$ProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductResponseImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      price: json['price'] as String?,
      category: json['category'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
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
    };
