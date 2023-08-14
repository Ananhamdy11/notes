import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
const  CustomTextField({super.key, required this.hinttext, this.maxlines=1, this.onSaved});
final String hinttext;
final int maxlines;
final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved:onSaved ,
      validator: (value){
        if(value!.isEmpty){
          return 'Field is required';
        }else{
          return null;
        }
      },
      cursorColor: Kprimrycolor,
      maxLines: maxlines,
decoration: InputDecoration(
  hintText: hinttext,
  hintStyle:TextStyle(
    color: Colors.white,
  ),
  border: Buildborder(),
  enabledBorder: Buildborder(),
  focusedBorder: Buildborder(Kprimrycolor)),
  
);
    
  }

  OutlineInputBorder Buildborder([color]) {
    return OutlineInputBorder(
  borderRadius: BorderRadius.circular(8),
  borderSide: BorderSide(
    color:color??Colors.white
    )
);
  }
}