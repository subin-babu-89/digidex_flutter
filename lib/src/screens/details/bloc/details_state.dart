part of 'details_bloc.dart';

@immutable
sealed class DetailsState extends Equatable {
  const DetailsState();
}

final class DetailsInitial extends DetailsState {
  const DetailsInitial();

  @override
  List<Object?> get props => [];
}

final class DetailsLoading extends DetailsState {
  const DetailsLoading({required this.id});
  final String id;

  @override
  List<Object?> get props => [id];
}

final class DetailsLoaded extends DetailsState {
  const DetailsLoaded({required this.detail});

  final String detail;

  @override
  List<Object?> get props => [detail];
}
