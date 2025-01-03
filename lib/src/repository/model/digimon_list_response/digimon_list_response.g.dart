// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digimon_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DigimonListResponse _$DigimonListResponseFromJson(Map<String, dynamic> json) =>
    DigimonListResponse(
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => Content.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageable: json['pageable'] == null
          ? null
          : Pageable.fromJson(json['pageable'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DigimonListResponseToJson(
        DigimonListResponse instance) =>
    <String, dynamic>{
      'content': instance.content,
      'pageable': instance.pageable,
    };
