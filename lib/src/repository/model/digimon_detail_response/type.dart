import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'type.g.dart';

@JsonSerializable()
class Type extends Equatable {
  final int? id;
  final String? type;

  const Type({this.id, this.type});

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);

  Map<String, dynamic> toJson() => _$TypeToJson(this);

  Type copyWith({
    int? id,
    String? type,
  }) {
    return Type(
      id: id ?? this.id,
      type: type ?? this.type,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, type];
}
