import 'package:digidex_flutter/src/sample_feature/list/components/sample_item.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'list_event.dart';
part 'list_state.dart';

class ListBloc extends Bloc<ListEvent, ListState> {
  ListBloc() : super(ListInitial()) {
    on<ListInitEvent>(_handleListInit);
  }

  void _handleListInit(ListInitEvent event, Emitter<ListState> emit) {
    emit(
        ListLoaded(items: const [SampleItem(1), SampleItem(2), SampleItem(3)]));
  }
}
