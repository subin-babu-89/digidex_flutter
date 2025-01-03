import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'field.g.dart';

@JsonSerializable()
class Field extends Equatable {
  final int? id;
  final String? field;
  final String? image;

  const Field({this.id, this.field, this.image});

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);

  Map<String, dynamic> toJson() => _$FieldToJson(this);

  Field copyWith({
    int? id,
    String? field,
    String? image,
  }) {
    return Field(
      id: id ?? this.id,
      field: field ?? this.field,
      image: image ?? this.image,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, field, image];
}
