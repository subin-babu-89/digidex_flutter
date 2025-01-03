part of 'list_bloc.dart';

sealed class ListState extends Equatable {
  const ListState();

  @override
  List<Object> get props => [];
}

final class ListInitial extends ListState {}

final class ListLoading extends ListState {
  const ListLoading({required this.pageNumber});

  final int pageNumber;

  @override
  List<Object> get props => [pageNumber];
}

final class ListLoaded extends ListState {
  const ListLoaded({required this.items});
  final List<Content> items;

  @override
  List<Object> get props => [items];
}
