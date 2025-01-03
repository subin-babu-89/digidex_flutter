import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'level.g.dart';

@JsonSerializable()
class Level extends Equatable {
  final int? id;
  final String? level;

  const Level({this.id, this.level});

  factory Level.fromJson(Map<String, dynamic> json) => _$LevelFromJson(json);

  Map<String, dynamic> toJson() => _$LevelToJson(this);

  Level copyWith({
    int? id,
    String? level,
  }) {
    return Level(
      id: id ?? this.id,
      level: level ?? this.level,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, level];
}
