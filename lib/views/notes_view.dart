import 'package:flutter/material.dart';
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

class AddNoteBootomSheet extends StatefulWidget {
  const AddNoteBootomSheet({super.key});

  @override
  State<AddNoteBootomSheet> createState() => _AddNoteBootomSheetState();
}

class _AddNoteBootomSheetState extends State<AddNoteBootomSheet> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            autovalidateMode: autovalidateMode,
            key: formKey,
            child: Column(
              children: [
                SizedBox(height: 30),
                CustomTextField(
                  hint: 'title',
                  onSaved: (value) {
                    title = value;
                  },
                ),
                SizedBox(height: 30),
                CustomTextField(
                  hint: 'describtion',
                  maxLines: 5,
                  onSaved: (value) {
                    subTitle = value;
                  },
                ),
                SizedBox(height: 70),
                CustomButton(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {

                      });
                    }
                  },
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
