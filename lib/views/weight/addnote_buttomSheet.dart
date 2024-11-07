import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:note_app/views/weight/Custom_textFiled.dart';
import 'package:note_app/views/weight/add_note_form.dart';
import 'package:note_app/views/weight/customButton.dart';

class addNoteBottomSheet extends StatelessWidget {
  const addNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
          child: BlocConsumer<AddNotesCubit, NotesState>(
        listener: (context, state) {
          if (state is AddNotesFailure) {
            print('failed ${state.errMessage}');
          }
          if (state is AddNotesSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: state is AddNotesLoading ? true : false,
              child: const addNoteform());
        },
      )),
    );
  }
}
