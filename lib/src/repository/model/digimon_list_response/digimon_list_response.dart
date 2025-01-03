import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'content.dart';
import 'pageable.dart';

part 'digimon_list_response.g.dart';

@JsonSerializable()
class DigimonListResponse extends Equatable {
  final List<Content>? content;
  final Pageable? pageable;

  const DigimonListResponse({this.content, this.pageable});

  factory DigimonListResponse.fromJson(Map<String, dynamic> json) {
    return _$DigimonListResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DigimonListResponseToJson(this);

  DigimonListResponse copyWith({
    List<Content>? content,
    Pageable? pageable,
  }) {
    return DigimonListResponse(
      content: content ?? this.content,
      pageable: pageable ?? this.pageable,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [content, pageable];
}
