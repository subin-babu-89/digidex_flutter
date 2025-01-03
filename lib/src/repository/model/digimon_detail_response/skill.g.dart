// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Skill _$SkillFromJson(Map<String, dynamic> json) => Skill(
      id: (json['id'] as num?)?.toInt(),
      skill: json['skill'] as String?,
      translation: json['translation'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$SkillToJson(Skill instance) => <String, dynamic>{
      'id': instance.id,
      'skill': instance.skill,
      'translation': instance.translation,
      'description': instance.description,
    };
