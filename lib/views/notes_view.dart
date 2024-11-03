import 'package:flutter/material.dart';
import 'package:note_app/views/weight/addnote_buttomSheet.dart';
import 'package:note_app/views/weight/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const addNoteBottomSheet();
              });
        },
        child: Icon(Icons.add),
      ),
      body: const Notesviesbody(),
    );
  }
}
