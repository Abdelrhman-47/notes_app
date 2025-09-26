import 'package:flutter/material.dart';
import 'package:notes_app/views/wigets/list_view_item.dart';

import '../../constants.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kColors.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: ListViewItem(color: kColors[index],),
        );
      },
    );
  }
}
