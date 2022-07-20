import 'package:equipment/features/catalog_page/domain/entity/rental/rental_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_state.freezed.dart';

@freezed
class CatalogState with _$CatalogState {
  const factory CatalogState({
    @Default([]) final List<RentalEntity> rentals,
    @Default(false) final bool loading,
    @Default(false) final bool error,
  }) = _CatalogState;
}
