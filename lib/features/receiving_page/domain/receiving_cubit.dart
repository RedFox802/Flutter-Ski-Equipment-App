import 'package:equipment/features/receiving_page/domain/state/receiving_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReceivingCubit extends Cubit<ReceivingState> {
  ReceivingCubit() : super(const ReceivingState());

  void setDelivery(bool delivery) {
    if (delivery && !state.isDelivery) {
      emit(state.copyWith(isDelivery: delivery));
    } else if (!delivery && state.isDelivery) {
      emit(state.copyWith(isDelivery: delivery));
    }
  }
}
