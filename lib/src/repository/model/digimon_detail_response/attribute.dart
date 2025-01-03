import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'attribute.g.dart';

@JsonSerializable()
class Attribute extends Equatable {
  final int? id;
  final String? attribute;

  const Attribute({this.id, this.attribute});

  factory Attribute.fromJson(Map<String, dynamic> json) {
    return _$AttributeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AttributeToJson(this);

  Attribute copyWith({
    int? id,
    String? attribute,
  }) {
    return Attribute(
      id: id ?? this.id,
      attribute: attribute ?? this.attribute,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, attribute];
}
