import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../repository/model/digimon_list_response/content.dart';
import '../../details/sample_item_details_view.dart';

class DigimonListItem extends StatelessWidget {
  const DigimonListItem({
    super.key,
    required this.item,
    required this.itemImage,
  });

  final Content item;
  final String? itemImage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Theme.of(context).colorScheme.primaryContainer,
      title: Text(
        item.name.toString(),
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer),
      ),
      subtitle: Text(item.id.toString()),
      leading: (itemImage == null)
          ? Image.asset('assets/images/flutter_logo.png')
          : Image.network(
              itemImage!,
              width: 50,
              fit: BoxFit.fill,
            ),
      onTap: () {
        context.push('/${SampleItemDetailsView.routeName}/${item.id}');
      },
    );
  }
}
