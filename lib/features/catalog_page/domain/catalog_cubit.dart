import 'package:equipment/features/catalog_page/domain/entity/rental/rental_entity.dart';
import 'package:equipment/features/catalog_page/domain/state/catalog_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/catalog_firebase_repository.dart';

class CatalogCubit extends Cubit<CatalogState> {
  CatalogCubit() : super(const CatalogState());

  final CatalogFirebaseRepository _repository = CatalogFirebaseRepository();

  Future<void> getRentals() async {
    try {
      emit(state.copyWith(loading: true));
      List<RentalEntity> entities = await _repository.getAllRentals();
      emit(state.copyWith(rentals: entities, loading: false, error: false));
    } catch (e) {
      emit(state.copyWith(error: true, loading: false));
    }
  }
}
