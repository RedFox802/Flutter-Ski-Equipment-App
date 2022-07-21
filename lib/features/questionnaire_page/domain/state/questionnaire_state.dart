import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../profile_page/domain/entity/questionnaire/questionnaire_entity.dart';

part 'questionnaire_state.freezed.dart';

@freezed
class QuestionnaireState with _$QuestionnaireState {
  const factory QuestionnaireState({
    @Default(false) final bool loading,
    @Default(false) final bool error,
    @Default([]) final List<QuestionnaireEntity> questionnaires,
  }) = _QuestionnaireState;
}
