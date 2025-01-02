part of 'list_bloc.dart';

sealed class ListState extends Equatable {
  const ListState();

  @override
  List<Object> get props => [];
}

final class ListInitial extends ListState {}

final class ListLoaded extends ListState {
  const ListLoaded({required this.items});
  final List<SampleItem> items;

  @override
  List<Object> get props => [items];
}
