import 'package:freezed_annotation/freezed_annotation.dart';

part 'receiving_state.freezed.dart';

@freezed
class ReceivingState with _$ReceivingState {
  const factory ReceivingState({
    @Default(true) final bool isDelivery,
  }) = _ReceivingState;
}
