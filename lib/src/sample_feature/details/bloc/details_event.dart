part of 'details_bloc.dart';

@immutable
sealed class DetailsEvent extends Equatable {
  const DetailsEvent();
}

class DetailsInitEvent extends DetailsEvent {
  const DetailsInitEvent({required this.id});

  final String id;

  @override
  List<Object?> get props => [];
}
