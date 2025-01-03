import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'prior_evolution.g.dart';

@JsonSerializable()
class PriorEvolution extends Equatable {
  final int? id;
  final String? digimon;
  final String? condition;
  final String? image;
  final String? url;

  const PriorEvolution({
    this.id,
    this.digimon,
    this.condition,
    this.image,
    this.url,
  });

  factory PriorEvolution.fromJson(Map<String, dynamic> json) {
    return _$PriorEvolutionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PriorEvolutionToJson(this);

  PriorEvolution copyWith({
    int? id,
    String? digimon,
    String? condition,
    String? image,
    String? url,
  }) {
    return PriorEvolution(
      id: id ?? this.id,
      digimon: digimon ?? this.digimon,
      condition: condition ?? this.condition,
      image: image ?? this.image,
      url: url ?? this.url,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, digimon, condition, image, url];
}
