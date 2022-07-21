import 'package:equipment/features/receiving_page/domain/state/receiving_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../orders_page/data/orders_firebase_repository.dart';
import 'entity/order_entity.dart';

class ReceivingCubit extends Cubit<ReceivingState> {
  ReceivingCubit() : super(const ReceivingState());

  final OrdersFirebaseRepository _repository = OrdersFirebaseRepository();

  Future<void> addOrder(OrderEntity orderEntity) async {
    try {
      emit(state.copyWith(loading: true));
      await _repository.addOrder(orderEntity);
      emit(state.copyWith(orderCreated: true, loading: false, error: false));
    } catch (e) {
      emit(state.copyWith(error: true, loading: false));
    }
  }

}
