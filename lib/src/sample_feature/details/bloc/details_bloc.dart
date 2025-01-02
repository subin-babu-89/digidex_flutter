import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'details_event.dart';
part 'details_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc() : super(DetailsInitial()) {
    on<DetailsInitEvent>(handleInit);
  }

  void handleInit(DetailsInitEvent event, Emitter<DetailsState> emit) {
    emit(DetailsLoaded(detail: 'More information ${event.id} here'));
  }
}
