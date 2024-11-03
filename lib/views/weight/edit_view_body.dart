import 'package:flutter/material.dart';
import 'package:note_app/views/weight/Custom_App_Bar.dart';
import 'package:note_app/views/weight/Custom_textFiled.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            titlel: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextfiled(hint: 'title'),
          SizedBox(
            height: 16,
          ),
          CustomTextfiled(
            hint: 'content',
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
