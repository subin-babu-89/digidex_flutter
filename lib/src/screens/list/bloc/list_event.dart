part of 'list_bloc.dart';

sealed class ListEvent extends Equatable {
  const ListEvent();

  @override
  List<Object> get props => [];
}

class ListInitEvent extends ListEvent {
  const ListInitEvent();
}
