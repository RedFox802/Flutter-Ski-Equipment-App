import 'package:equipment/features/booking_page/domain/entity/order_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_state.freezed.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState({
    @Default([]) final List<OrderEntity> orders,
    @Default(false) final bool loading,
    @Default(false) final bool error,
  }) = _OrdersState;
}
