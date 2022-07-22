import 'package:equipment/features/catalog_page/domain/entity/rental/rental_entity.dart';
import 'package:equipment/features/review_page/domain/state/review_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../catalog_page/domain/data/catalog_firebase_repository.dart';

class ReviewCubit extends Cubit<ReviewState> {
  ReviewCubit() : super(const ReviewState());

  final CatalogFirebaseRepository _catalogFirebaseRepository =
      CatalogFirebaseRepository();

  Future<void> review(RentalEntity rentalEntity) async {
    try {
      emit(state.copyWith(loading: true,error: false));
      await _catalogFirebaseRepository.reviewRental(
          rentalEntity.rating + 0.1, rentalEntity.name);
      emit(state.copyWith(ready: true, loading: false, error: false));
    } catch (e) {
      emit(state.copyWith(error: true, loading: false));
    }
  }
}
