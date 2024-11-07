import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/weight/Custom_textFiled.dart';
import 'package:note_app/views/weight/customButton.dart';

class addNoteform extends StatefulWidget {
  const addNoteform({
    super.key,
  });

  @override
  State<addNoteform> createState() => _addNoteformState();
}

class _addNoteformState extends State<addNoteform> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextfiled(
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          SizedBox(height: 16),
          CustomTextfiled(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'content',
            maxLines: 5,
          ),
          SizedBox(height: 32),
          CustomButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                var noteModel = NoteModel(
                    title: title!,
                    subTitle: subTitle!,
                    date: DateTime.now().toString(),
                    color: Colors.blue.value);
                BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
