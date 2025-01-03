import 'package:digidex_flutter/src/repository/digimon.dart';
import 'package:digidex_flutter/src/screens/list/bloc/list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../settings/settings_view.dart';
import 'components/digimon_list_item.dart';

/// Displays a list of SampleItems.
class SampleItemListView extends StatelessWidget {
  const SampleItemListView({
    super.key,
  });

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Items'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              context.push(SettingsView.routeName);
            },
          ),
        ],
      ),

      // To work with lists that may contain a large number of items, it’s best
      // to use the ListView.builder constructor.
      //
      // In contrast to the default ListView constructor, which requires
      // building all Widgets up front, the ListView.builder constructor lazily
      // builds Widgets as they’re scrolled into view.
      body: BlocProvider(
        create: (context) => ListBloc(
          digimonRepository: context.read<DigimonRepository>(),
        ),
        child: ListContent(),
      ),
    );
  }
}

class ListContent extends StatefulWidget {
  const ListContent({
    super.key,
  });

  @override
  State<ListContent> createState() => _ListContentState();
}

class _ListContentState extends State<ListContent> {
  @override
  void initState() {
    context.read<ListBloc>().add(ListInitEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListBloc, ListState>(
      builder: (context, state) {
        return switch (state) {
          ListInitial() => Center(
              child: Text("Loading..."),
            ),
          ListLoading loading => Center(
              child: Text('Loading page ${loading.pageNumber}'),
            ),
          ListLoaded loaded => ListView.separated(
              // Providing a restorationId allows the ListView to restore the
              // scroll position when a user leaves and returns to the app after it
              // has been killed while running in the background.
              padding: EdgeInsets.all(8),
              restorationId: 'sampleItemListView',
              itemCount: loaded.items.length,
              separatorBuilder: (context, index) => SizedBox(
                height: 8,
              ),
              itemBuilder: (BuildContext context, int index) {
                final item = loaded.items[index];
                return DigimonListItem(item: item, itemImage: item.image);
              },
            ),
        };
      },
    );
  }
}
