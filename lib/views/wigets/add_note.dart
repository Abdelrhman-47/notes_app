import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/views/wigets/custom_form.dart';

import '../../cubits/add_note_cubit/add_note_state.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteBootomSheet extends StatefulWidget {
  const AddNoteBootomSheet({super.key});

  @override
  State<AddNoteBootomSheet> createState() => _AddNoteBootomSheetState();
}

class _AddNoteBootomSheetState extends State<AddNoteBootomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteFailure) {
                return debugPrint(state.failure);
              }
              if (state is AddNoteSuccess) {
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: CustomForm(),
              );
            },
          ),
        ),
      ),
    );
  }
}
