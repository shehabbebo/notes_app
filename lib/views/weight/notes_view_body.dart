import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubits/notes_cubit.dart';
import 'package:note_app/views/weight/Custom_App_Bar.dart';
import 'package:note_app/views/weight/custom_itemnote.dart';
import 'package:note_app/views/weight/notes_list_view.dart';

class Notesviewbody extends StatefulWidget {
  const Notesviewbody({super.key});

  @override
  State<Notesviewbody> createState() => _NotesviewbodyState();
}

class _NotesviewbodyState extends State<Notesviewbody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

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
            titlel: 'Notes',
            icon: Icons.search,
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
