import 'package:cloud_firestore/cloud_firestore.dart';

import '../../authentication_page/data/user_id_storage.dart';
import '../../receiving_page/domain/entity/order_entity.dart';

class OrdersFirebaseRepository {
  final _fireStore = FirebaseFirestore.instance;
  final UserIdStorage _userIdStorage = UserIdStorage();

  Future<List<OrderEntity>> getAllOrders() async {
    String userId = await _userIdStorage.loadUserId();

    final snapshot = await _fireStore
        .collection('orders')
        .where('id', isEqualTo: userId)
        .get();
    return snapshot.docs
        .map((doc) => doc.data())
        .toList()
        .map((json) => OrderEntity.fromJson(json))
        .toList();
  }

  Future<void> addOrder(OrderEntity orderEntity) async {
    final orders = _fireStore.collection('orders');
    await orders.add(
      orderEntity.toJson(),
    );
  }

}
