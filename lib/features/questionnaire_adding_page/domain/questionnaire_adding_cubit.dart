import 'package:equipment/features/profile_page/domain/entity/questionnaire/questionnaire_entity.dart';
import 'package:equipment/features/questionnaire_adding_page/domain/state/questionnaire_adding_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../questionnaire_page/date/questionnaire_firebase_repositoty.dart';

class QuestionnaireAddingCubit extends Cubit<QuestionnaireAddingState> {
  QuestionnaireAddingCubit() : super(const QuestionnaireAddingState());

  final QuestionnaireFirebaseRepository _repository =
      QuestionnaireFirebaseRepository();

  Future<void> addQuestionnaire(QuestionnaireEntity questionnaireEntity) async {
    try {
      emit(state.copyWith(loading: true));
      await _repository.addQuestionnaire(questionnaireEntity);
      emit(state.copyWith(ready: true, loading: false, error: false));
    } catch (e) {
      emit(state.copyWith(error: true, loading: false));
    }
  }

  Future<void> updateQuestionnaire(String id, Map<String,dynamic> fields) async {
    try {
      emit(state.copyWith(loading: true));
      await _repository.updateQuestionnaire(id,fields);
      emit(state.copyWith(ready: true, loading: false, error: false));
    } catch (e) {
      emit(state.copyWith(error: true, loading: false));
    }
  }

  Future<void> deleteQuestionnaire(String id) async {
    try {
      emit(state.copyWith(loading: true));
      await _repository.deleteQuestionnaire(id);
      emit(state.copyWith(ready: true, loading: false, error: false));
    } catch (e) {
      emit(state.copyWith(error: true, loading: false));
    }
  }
}
