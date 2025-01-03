// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digimon_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DigimonDetailResponse _$DigimonDetailResponseFromJson(
        Map<String, dynamic> json) =>
    DigimonDetailResponse(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      xAntibody: json['xAntibody'] as bool?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      levels: (json['levels'] as List<dynamic>?)
          ?.map((e) => Level.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => Type.fromJson(e as Map<String, dynamic>))
          .toList(),
      attributes: (json['attributes'] as List<dynamic>?)
          ?.map((e) => Attribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => Field.fromJson(e as Map<String, dynamic>))
          .toList(),
      releaseDate: json['releaseDate'] as String?,
      descriptions: (json['descriptions'] as List<dynamic>?)
          ?.map((e) => Description.fromJson(e as Map<String, dynamic>))
          .toList(),
      skills: (json['skills'] as List<dynamic>?)
          ?.map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      priorEvolutions: (json['priorEvolutions'] as List<dynamic>?)
          ?.map((e) => PriorEvolution.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextEvolutions: (json['nextEvolutions'] as List<dynamic>?)
          ?.map((e) => NextEvolution.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DigimonDetailResponseToJson(
        DigimonDetailResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'xAntibody': instance.xAntibody,
      'images': instance.images,
      'levels': instance.levels,
      'types': instance.types,
      'attributes': instance.attributes,
      'fields': instance.fields,
      'releaseDate': instance.releaseDate,
      'descriptions': instance.descriptions,
      'skills': instance.skills,
      'priorEvolutions': instance.priorEvolutions,
      'nextEvolutions': instance.nextEvolutions,
    };
