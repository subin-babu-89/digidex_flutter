// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'next_evolution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NextEvolution _$NextEvolutionFromJson(Map<String, dynamic> json) =>
    NextEvolution(
      id: (json['id'] as num?)?.toInt(),
      digimon: json['digimon'] as String?,
      condition: json['condition'] as String?,
      image: json['image'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$NextEvolutionToJson(NextEvolution instance) =>
    <String, dynamic>{
      'id': instance.id,
      'digimon': instance.digimon,
      'condition': instance.condition,
      'image': instance.image,
      'url': instance.url,
    };
