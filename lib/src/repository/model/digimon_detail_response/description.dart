import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'description.g.dart';

@JsonSerializable()
class Description extends Equatable {
  final String? origin;
  final String? language;
  final String? description;

  const Description({this.origin, this.language, this.description});

  factory Description.fromJson(Map<String, dynamic> json) {
    return _$DescriptionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DescriptionToJson(this);

  Description copyWith({
    String? origin,
    String? language,
    String? description,
  }) {
    return Description(
      origin: origin ?? this.origin,
      language: language ?? this.language,
      description: description ?? this.description,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [origin, language, description];
}
