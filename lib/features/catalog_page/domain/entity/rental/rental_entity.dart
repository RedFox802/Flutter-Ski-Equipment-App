import 'package:equipment/features/catalog_page/domain/entity/products/product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rental_entity.freezed.dart';
part 'rental_entity.g.dart';

@freezed
class RentalEntity with _$RentalEntity {
  const factory RentalEntity({
    @Default('') final String name,
    @Default(0) final double rating,
    @Default('') final String phone,
    @Default('') final String address,
    @Default('') final String hours,
    @Default('') final String description,
    @Default([]) final List<ProductEntity> products,
  }) = _RentalEntity;

  factory RentalEntity.fromJson(Map<String, dynamic> json) =>
      _$RentalEntityFromJson(json);
}
