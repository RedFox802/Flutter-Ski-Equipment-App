import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../profile_page/domain/entity/questionnaire/questionnaire_entity.dart';

part 'booking_state.freezed.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState({
    @Default(-1) final int currentIndex,
    @Default(false) final bool loading,
    @Default(false) final bool error,
    @Default([]) final List<QuestionnaireEntity> questionnaires,
  }) = _BookingState;
}
