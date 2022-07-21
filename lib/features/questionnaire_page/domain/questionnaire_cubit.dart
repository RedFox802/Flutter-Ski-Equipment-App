import 'package:equipment/features/questionnaire_page/domain/state/questionnaire_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../profile_page/domain/entity/questionnaire/questionnaire_entity.dart';
import '../date/questionnaire_firebase_repositoty.dart';

class QuestionnaireCubit extends Cubit<QuestionnaireState> {
  QuestionnaireCubit() : super(const QuestionnaireState());

  final QuestionnaireFirebaseRepository _repository =
      QuestionnaireFirebaseRepository();

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
