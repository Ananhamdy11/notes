import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:notes_app/widgets/add_notes.dart';

import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed:(){
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          )
          ,context: context, builder: (context){
        return const AddNoteBottomSheet();
        });
      } ,
      child:const Icon(Icons.add),),
body:const NotesViewBody(),
    );
  }
}

