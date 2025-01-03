import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'attribute.dart';
import 'description.dart';
import 'field.dart';
import 'image.dart';
import 'level.dart';
import 'next_evolution.dart';
import 'prior_evolution.dart';
import 'skill.dart';
import 'type.dart';

part 'digimon_detail_response.g.dart';

@JsonSerializable()
class DigimonDetailResponse extends Equatable {
  final int? id;
  final String? name;
  final bool? xAntibody;
  final List<Image>? images;
  final List<Level>? levels;
  final List<Type>? types;
  final List<Attribute>? attributes;
  final List<Field>? fields;
  final String? releaseDate;
  final List<Description>? descriptions;
  final List<Skill>? skills;
  final List<PriorEvolution>? priorEvolutions;
  final List<NextEvolution>? nextEvolutions;

  const DigimonDetailResponse({
    this.id,
    this.name,
    this.xAntibody,
    this.images,
    this.levels,
    this.types,
    this.attributes,
    this.fields,
    this.releaseDate,
    this.descriptions,
    this.skills,
    this.priorEvolutions,
    this.nextEvolutions,
  });

  factory DigimonDetailResponse.fromJson(Map<String, dynamic> json) {
    return _$DigimonDetailResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DigimonDetailResponseToJson(this);

  DigimonDetailResponse copyWith({
    int? id,
    String? name,
    bool? xAntibody,
    List<Image>? images,
    List<Level>? levels,
    List<Type>? types,
    List<Attribute>? attributes,
    List<Field>? fields,
    String? releaseDate,
    List<Description>? descriptions,
    List<Skill>? skills,
    List<PriorEvolution>? priorEvolutions,
    List<NextEvolution>? nextEvolutions,
  }) {
    return DigimonDetailResponse(
      id: id ?? this.id,
      name: name ?? this.name,
      xAntibody: xAntibody ?? this.xAntibody,
      images: images ?? this.images,
      levels: levels ?? this.levels,
      types: types ?? this.types,
      attributes: attributes ?? this.attributes,
      fields: fields ?? this.fields,
      releaseDate: releaseDate ?? this.releaseDate,
      descriptions: descriptions ?? this.descriptions,
      skills: skills ?? this.skills,
      priorEvolutions: priorEvolutions ?? this.priorEvolutions,
      nextEvolutions: nextEvolutions ?? this.nextEvolutions,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      name,
      xAntibody,
      images,
      levels,
      types,
      attributes,
      fields,
      releaseDate,
      descriptions,
      skills,
      priorEvolutions,
      nextEvolutions,
    ];
  }
}
