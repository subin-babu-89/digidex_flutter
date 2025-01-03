import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'skill.g.dart';

@JsonSerializable()
class Skill extends Equatable {
  final int? id;
  final String? skill;
  final String? translation;
  final String? description;

  const Skill({this.id, this.skill, this.translation, this.description});

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);

  Map<String, dynamic> toJson() => _$SkillToJson(this);

  Skill copyWith({
    int? id,
    String? skill,
    String? translation,
    String? description,
  }) {
    return Skill(
      id: id ?? this.id,
      skill: skill ?? this.skill,
      translation: translation ?? this.translation,
      description: description ?? this.description,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, skill, translation, description];
}
