import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../repository/digimon.dart';

part 'details_event.dart';
part 'details_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc({required DigimonRepository digimonRepository})
      : _digimonRepository = digimonRepository,
        super(DetailsInitial()) {
    on<DetailsInitEvent>(handleInit);
  }
  final DigimonRepository _digimonRepository;

  Future handleInit(DetailsInitEvent event, Emitter<DetailsState> emit) async {
    emit(DetailsLoading(id: event.id));
    final response =
        await _digimonRepository.getDigimonDetails(digimonId: event.id);
    emit(DetailsLoaded(detail: response.toString()));
  }
}
