import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';

import 'edit_view_body.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key, required this.color, required this.notes});
  final Color color;
  final NoteModel? notes;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => EditNoteViewBody()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.orangeAccent,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    notes!.title,
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    notes!.subtitle,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black.withOpacity(.4),
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.trash, color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
              child: Text(
                notes!.date,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black.withOpacity(.7),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
