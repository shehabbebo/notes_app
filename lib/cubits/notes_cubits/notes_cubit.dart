import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model.dart';
import '../../constant.dart';
part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel>? notes = notesBox.values.toList();
      // emit(NotesSuccess(notes));
      emit(NotesSuccess(notes: notes));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
