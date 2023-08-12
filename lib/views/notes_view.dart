import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:notes_app/widgets/action_bottom.dart';

import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed:(){
        showModalBottomSheet(context: context, builder: (context){
        return AddNoteBottomSheet();
        });
      } ,
      child:Icon(Icons.add),),
body:const NotesViewBody(),
    );
  }
}

