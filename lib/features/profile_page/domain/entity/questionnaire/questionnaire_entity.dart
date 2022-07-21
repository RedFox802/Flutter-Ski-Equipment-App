import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionnaire_entity.freezed.dart';
part 'questionnaire_entity.g.dart';

@freezed
class QuestionnaireEntity with _$QuestionnaireEntity{
  const factory QuestionnaireEntity({
    @Default('') final String userId,
    @Default('') final String id,
    @Default('') final String name,
    @Default('') final String weight,
    @Default('') final String height,
    @Default('') final String shoeSize,
    @Default(false) final bool isExperienced,

  }) = _QuestionnaireEntity;

  factory QuestionnaireEntity.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireEntityFromJson(json);
}