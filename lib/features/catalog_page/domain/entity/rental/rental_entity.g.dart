// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rental_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RentalEntity _$$_RentalEntityFromJson(Map<String, dynamic> json) =>
    _$_RentalEntity(
      name: json['name'] as String? ?? '',
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      phone: json['phone'] as String? ?? '',
      address: json['address'] as String? ?? '',
      hours: json['hours'] as String? ?? '',
      description: json['description'] as String? ?? '',
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => ProductEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_RentalEntityToJson(_$_RentalEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rating': instance.rating,
      'phone': instance.phone,
      'address': instance.address,
      'hours': instance.hours,
      'description': instance.description,
      'products': instance.products,
    };
