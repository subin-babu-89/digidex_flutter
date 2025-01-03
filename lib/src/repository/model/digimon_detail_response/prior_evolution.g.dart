// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prior_evolution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriorEvolution _$PriorEvolutionFromJson(Map<String, dynamic> json) =>
    PriorEvolution(
      id: (json['id'] as num?)?.toInt(),
      digimon: json['digimon'] as String?,
      condition: json['condition'] as String?,
      image: json['image'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$PriorEvolutionToJson(PriorEvolution instance) =>
    <String, dynamic>{
      'id': instance.id,
      'digimon': instance.digimon,
      'condition': instance.condition,
      'image': instance.image,
      'url': instance.url,
    };
