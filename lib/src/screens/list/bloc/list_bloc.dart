import 'package:digidex_flutter/src/repository/digimon.dart';
import 'package:digidex_flutter/src/repository/model/digimon_list_response/content.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'list_event.dart';
part 'list_state.dart';

class ListBloc extends Bloc<ListEvent, ListState> {
  ListBloc({required DigimonRepository digimonRepository})
      : _digimonRepository = digimonRepository,
        super(ListInitial()) {
    on<ListInitEvent>(_handleListInit);
  }

  final DigimonRepository _digimonRepository;

  Future _handleListInit(ListInitEvent event, Emitter<ListState> emit) async {
    emit(ListLoading(pageNumber: 0));
    final response = await _digimonRepository.getDigimonList(pageNumber: 0);
    emit(ListLoaded(items: response.content ?? []));
  }
}
