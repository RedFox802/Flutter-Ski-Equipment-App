import 'package:equipment/features/orders_page/domain/state/orders_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../receiving_page/domain/entity/order_entity.dart';
import '../data/orders_firebase_repository.dart';

class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit() : super(const OrdersState());

  final OrdersFirebaseRepository _repository = OrdersFirebaseRepository();

  Future<void> getOrders() async {
    try {
      emit(state.copyWith(loading: true));
      List<OrderEntity> entities = await _repository.getAllOrders();
      emit(state.copyWith(orders: entities, loading: false, error: false));
    } catch (e) {
      emit(state.copyWith(error: true, loading: false));
    }
  }
}
