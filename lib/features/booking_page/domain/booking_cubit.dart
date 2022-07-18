import 'package:equipment/features/booking_page/domain/state/booking_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookingCubit extends Cubit<BookingState> {
  BookingCubit() : super(const BookingState());

  void changeIndex(int newIndex) {
    emit(state.copyWith(currentIndex: newIndex));
  }
}
