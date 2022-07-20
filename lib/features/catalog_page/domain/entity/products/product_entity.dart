import 'package:equipment/features/catalog_page/domain/entity/price/price_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';
part 'product_entity.g.dart';

@freezed
class ProductEntity with _$ProductEntity {
  const factory ProductEntity({
    @Default('') final String name,
    @Default('') final String description,
    @Default('') final String type,
    @Default([]) final List<PriceEntity> prices,
  }) = _ProductEntity;

  factory ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductEntityFromJson(json);
}
