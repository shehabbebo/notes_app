import 'package:flutter/material.dart';
import 'package:note_app/views/weight/Custom_textFiled.dart';

class addNoteBottomSheet extends StatelessWidget {
  const addNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextfiled(
            hint: 'title',
          ),
          SizedBox(height: 16),
          CustomTextfiled(
            hint: 'content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
