// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pageable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pageable _$PageableFromJson(Map<String, dynamic> json) => Pageable(
      currentPage: (json['currentPage'] as num?)?.toInt(),
      elementsOnPage: (json['elementsOnPage'] as num?)?.toInt(),
      totalElements: (json['totalElements'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      previousPage: json['previousPage'] as String?,
      nextPage: json['nextPage'] as String?,
    );

Map<String, dynamic> _$PageableToJson(Pageable instance) => <String, dynamic>{
      'currentPage': instance.currentPage,
      'elementsOnPage': instance.elementsOnPage,
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
      'previousPage': instance.previousPage,
      'nextPage': instance.nextPage,
    };
