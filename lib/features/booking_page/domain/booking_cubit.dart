import 'package:equipment/features/booking_page/domain/state/booking_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../profile_page/domain/entity/questionnaire/questionnaire_entity.dart';
import '../../questionnaire_page/date/questionnaire_firebase_repositoty.dart';

class BookingCubit extends Cubit<BookingState> {
  BookingCubit() : super(const BookingState());

  final QuestionnaireFirebaseRepository _repository =
      QuestionnaireFirebaseRepository();

  void changeIndex(int newIndex) {
    emit(state.copyWith(currentIndex: newIndex));
  }

  Future<void> getQuestionnaires() async {
    try {
      emit(state.copyWith(loading: true));
      List<QuestionnaireEntity> entities =
          await _repository.getQuestionnaires();
      emit(state.copyWith(
          questionnaires: entities, loading: false, error: false));
    } catch (e) {
      emit(state.copyWith(error: true, loading: false));
    }
  }
}
