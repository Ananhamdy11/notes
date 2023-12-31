import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_item.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

import 'custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children:const [
          SizedBox(height: 70,),
          CustomAppBar(title: 'Notes',icon: Icons.search,),
          Expanded(child: NotesListView())
    
        ],
    
      ),
    );
  }
}

