import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equipment/features/booking_page/domain/entity/order_entity.dart';

class OrdersFirebaseRepository {
  final _fireStore = FirebaseFirestore.instance;

  Future<List<OrderEntity>> getAllOrders() async {
    final snapshot = await _fireStore.collection('orders').get();
    return snapshot.docs
        .map((doc) => doc.data())
        .toList()
        .map((json) => OrderEntity.fromJson(json))
        .toList();
  }
}
