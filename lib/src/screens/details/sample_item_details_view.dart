import 'package:digidex_flutter/src/repository/digimon.dart';
import 'package:digidex_flutter/src/screens/details/bloc/details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({
    super.key,
    required this.id,
  });

  final String id;

  static const routeName = 'sample_item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details'),
      ),
      body: BlocProvider(
        create: (context) =>
            DetailsBloc(digimonRepository: context.read<DigimonRepository>()),
        child: DetailsContent(id: id),
      ),
    );
  }
}

class DetailsContent extends StatefulWidget {
  const DetailsContent({
    super.key,
    required this.id,
  });

  final String id;

  @override
  State<DetailsContent> createState() => _DetailsContentState();
}

class _DetailsContentState extends State<DetailsContent> {
  @override
  void initState() {
    context.read<DetailsBloc>().add(DetailsInitEvent(id: widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<DetailsBloc, DetailsState>(
        builder: (context, state) {
          switch (state) {
            case DetailsInitial():
              return Text('Loading...');
            case DetailsLoading loading:
              return Text('Loading details for ${loading.id}');
            case DetailsLoaded loaded:
              return Text(loaded.detail);
          }
        },
      ),
    );
  }
}
