// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionnaire_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionnaireEntity _$$_QuestionnaireEntityFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionnaireEntity(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      weight: json['weight'] as String? ?? '',
      height: json['height'] as String? ?? '',
      shoeSize: json['shoeSize'] as String? ?? '',
      isExperienced: json['isExperienced'] as bool? ?? false,
    );

Map<String, dynamic> _$$_QuestionnaireEntityToJson(
        _$_QuestionnaireEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'weight': instance.weight,
      'height': instance.height,
      'shoeSize': instance.shoeSize,
      'isExperienced': instance.isExperienced,
    };
