import 'package:flutter/material.dart';

import '../../constants.dart';
import 'custo_app_bar.dart';
import 'custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 50),
            CustomAppBar(
              onPressed: () {
                Navigator.pop(context);
              },
              title: 'Edit Note',
              icon: Icons.check,
            ),
            const SizedBox(height: 50),
            CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hint: 'titlr',
            ),
            const SizedBox(height: 16),
            CustomTextField(
              onChanged: (value) {
                content = value;
              },
              hint: 'subTitle',
              maxLines: 5,
            ),
            const SizedBox(height: 16),
            ],
        ),
      ),
    );
  }
}
