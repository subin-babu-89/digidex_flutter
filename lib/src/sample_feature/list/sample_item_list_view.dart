import 'package:digidex_flutter/src/sample_feature/list/bloc/list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../settings/settings_view.dart';
import '../details/sample_item_details_view.dart';

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
        create: (context) => ListBloc(),
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
          ListLoaded loaded => ListView.builder(
              // Providing a restorationId allows the ListView to restore the
              // scroll position when a user leaves and returns to the app after it
              // has been killed while running in the background.
              restorationId: 'sampleItemListView',
              itemCount: loaded.items.length,
              itemBuilder: (BuildContext context, int index) {
                final item = loaded.items[index];

                return ListTile(
                    title: Text('SampleItem ${item.id}'),
                    leading: const CircleAvatar(
                      // Display the Flutter Logo image asset.
                      foregroundImage:
                          AssetImage('assets/images/flutter_logo.png'),
                    ),
                    onTap: () {
                      context.push(
                          '/${SampleItemDetailsView.routeName}/${item.id}');
                    });
              },
            ),
        };
      },
    );
  }
}
