// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductEntity _$$_ProductEntityFromJson(Map<String, dynamic> json) =>
    _$_ProductEntity(
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      type: json['type'] as String? ?? '',
      prices: (json['prices'] as List<dynamic>?)
              ?.map((e) => PriceEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ProductEntityToJson(_$_ProductEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'prices': instance.prices,
    };
