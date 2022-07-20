// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderEntity _$$_OrderEntityFromJson(Map<String, dynamic> json) =>
    _$_OrderEntity(
      id: json['id'] as String? ?? '',
      equipmentName: json['equipmentName'] as String? ?? '',
      rentalName: json['rentalName'] as String? ?? '',
      dates: json['dates'] as String? ?? '',
      isDelivery: json['isDelivery'] as bool? ?? true,
      address: json['address'] as String? ?? '',
      period: json['period'] as String? ?? '',
      price: json['price'] as int? ?? 0,
    );

Map<String, dynamic> _$$_OrderEntityToJson(_$_OrderEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'equipmentName': instance.equipmentName,
      'rentalName': instance.rentalName,
      'dates': instance.dates,
      'isDelivery': instance.isDelivery,
      'address': instance.address,
      'period': instance.period,
      'price': instance.price,
    };
