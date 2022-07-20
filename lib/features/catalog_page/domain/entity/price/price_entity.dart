import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_entity.freezed.dart';
part 'price_entity.g.dart';

@freezed
class PriceEntity with _$PriceEntity {
  const factory PriceEntity({
    @Default(0) final int price,
    @Default(0) final int period,
  }) = _PriceEntity;

  factory PriceEntity.fromJson(Map<String, dynamic> json) =>
      _$PriceEntityFromJson(json);
}
