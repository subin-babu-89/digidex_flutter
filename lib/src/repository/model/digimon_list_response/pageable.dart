import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pageable.g.dart';

@JsonSerializable()
class Pageable extends Equatable {
  final int? currentPage;
  final int? elementsOnPage;
  final int? totalElements;
  final int? totalPages;
  final String? previousPage;
  final String? nextPage;

  const Pageable({
    this.currentPage,
    this.elementsOnPage,
    this.totalElements,
    this.totalPages,
    this.previousPage,
    this.nextPage,
  });

  factory Pageable.fromJson(Map<String, dynamic> json) {
    return _$PageableFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PageableToJson(this);

  Pageable copyWith({
    int? currentPage,
    int? elementsOnPage,
    int? totalElements,
    int? totalPages,
    String? previousPage,
    String? nextPage,
  }) {
    return Pageable(
      currentPage: currentPage ?? this.currentPage,
      elementsOnPage: elementsOnPage ?? this.elementsOnPage,
      totalElements: totalElements ?? this.totalElements,
      totalPages: totalPages ?? this.totalPages,
      previousPage: previousPage ?? this.previousPage,
      nextPage: nextPage ?? this.nextPage,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      currentPage,
      elementsOnPage,
      totalElements,
      totalPages,
      previousPage,
      nextPage,
    ];
  }
}
