import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({super.key});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return  Form(
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
    );
  }
}
