import 'package:flutter/material.dart';
import 'package:notes_app/views/wigets/add_note.dart';
import 'package:notes_app/views/wigets/custom_button.dart';
import 'package:notes_app/views/wigets/custom_text_field.dart';
import 'package:notes_app/views/wigets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddNoteBootomSheet();
            },
          );
        },
        child: Icon(Icons.add, size: 30),
      ),
    );
  }
}

