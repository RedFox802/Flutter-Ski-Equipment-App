import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_entity.freezed.dart';
part 'order_entity.g.dart';

@freezed
class OrderEntity with _$OrderEntity{
  const factory OrderEntity({
    @Default('') final String id,
    @Default('') final String equipmentName,
    @Default('') final String rentalName,
    @Default('') final String dates,
    @Default(true) final bool isDelivery,
    @Default('') final String address,
    @Default('') final String period,
    @Default(0) final int price,
  }) = _OrderEntity;

  factory OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityFromJson(json);
}