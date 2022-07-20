import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equipment/features/catalog_page/domain/entity/rental/rental_entity.dart';

class CatalogFirebaseRepository {
  final _fireStore = FirebaseFirestore.instance;

  Future<List<RentalEntity>> getAllRentals() async {
    final snapshot = await _fireStore.collection('rentals').get();
    return snapshot.docs
        .map((doc) => doc.data())
        .toList()
        .map((json) => RentalEntity.fromJson(json))
        .toList();
  }
}
