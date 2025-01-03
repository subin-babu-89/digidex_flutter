// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Content _$ContentFromJson(Map<String, dynamic> json) => Content(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      href: json['href'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'href': instance.href,
      'image': instance.image,
    };
