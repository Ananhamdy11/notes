import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:notes_app/widgets/constants.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  
    const Padding(
       padding:  EdgeInsets.symmetric(horizontal: 16),
       child: SingleChildScrollView(
         child: Addnotesform(),
       ),
     );
    
  }
}

class Addnotesform extends StatefulWidget {
  const Addnotesform({
    super.key,
  });

  @override
  State<Addnotesform> createState() => _AddnotesformState();
}

class _AddnotesformState extends State<Addnotesform> {
  final GlobalKey<FormState>formkey =GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;

  String? title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
       const  SizedBox(
           height: 32,
         )
          ,CustomTextField(
            onSaved: (value){
              title=value;
            },
           hinttext: 'Title',
          ),
         const SizedBox(height: 16,),
          CustomTextField(
            hinttext: 'Content',maxlines: 7,
            onSaved: (value){
              subtitle=value;
            },
            ),
         const SizedBox(height: 32,),
          CustomButton(onTap: (){

          if(formkey.currentState!.validate()){
            formkey.currentState!.save();


          }else{
            autovalidateMode=AutovalidateMode.always;
            setState(() {
              
            });
          }

         },),
         
         const SizedBox(height: 16,)
        ],
      ),
    );
  }
}

