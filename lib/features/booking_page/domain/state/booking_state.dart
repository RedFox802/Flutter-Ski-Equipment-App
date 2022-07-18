import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_state.freezed.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState({
    @Default(0) final int currentIndex,
  }) = _BookingState;
}
