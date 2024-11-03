import 'package:flutter/material.dart';
import 'package:note_app/views/weight/Custom_App_Bar.dart';
import 'package:note_app/views/weight/custom_itemnote.dart';
import 'package:note_app/views/weight/notes_list_view.dart';

class Notesviesbody extends StatelessWidget {
  const Notesviesbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
