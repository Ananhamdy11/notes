import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({required this.hinttext, this.maxlines=1});
final String hinttext;
final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
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