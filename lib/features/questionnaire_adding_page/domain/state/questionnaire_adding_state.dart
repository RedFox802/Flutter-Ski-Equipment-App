import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionnaire_adding_state.freezed.dart';

@freezed
class QuestionnaireAddingState with _$QuestionnaireAddingState {
  const factory QuestionnaireAddingState({
    @Default(false) final bool loading,
    @Default(false) final bool error,
    @Default(false) final bool ready,
  }) = _QuestionnaireAddingState;
}
