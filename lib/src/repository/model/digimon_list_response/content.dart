import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'content.g.dart';

@JsonSerializable()
class Content extends Equatable {
  final int? id;
  final String? name;
  final String? href;
  final String? image;

  const Content({this.id, this.name, this.href, this.image});

  factory Content.fromJson(Map<String, dynamic> json) {
    return _$ContentFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ContentToJson(this);

  Content copyWith({
    int? id,
    String? name,
    String? href,
    String? image,
  }) {
    return Content(
      id: id ?? this.id,
      name: name ?? this.name,
      href: href ?? this.href,
      image: image ?? this.image,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, name, href, image];
}
