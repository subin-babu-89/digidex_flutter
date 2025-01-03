import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image.g.dart';

@JsonSerializable()
class Image extends Equatable {
  final String? href;
  final bool? transparent;

  const Image({this.href, this.transparent});

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);

  Image copyWith({
    String? href,
    bool? transparent,
  }) {
    return Image(
      href: href ?? this.href,
      transparent: transparent ?? this.transparent,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [href, transparent];
}
