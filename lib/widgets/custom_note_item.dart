import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24,bottom:24,left:16),
      decoration: BoxDecoration(
        color:Color(0xffFFCCB0),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title:const 
            Text('Flutter Tips',
            style: TextStyle(color: Colors.black,fontSize: 26),),
            subtitle:  Padding(
              padding: const EdgeInsets.only(top: 16,bottom: 16),
              child: Text('Build your career with Tharwat Samy',
              style: TextStyle(color: Colors.black.withOpacity(0.5)
              ,fontSize: 18
              ),),
            ),
            trailing: IconButton(onPressed: (){}, 
            icon: Icon(Icons.delete,color: Colors.black,size: 30,)),

          ),
          Padding(
            padding: const EdgeInsets.only(right:24),
            child: Text('7 July , 2023',
            style: TextStyle(
              color: Colors.black.withOpacity(.4),
            fontSize: 16),),
          )
        ],
      ),
    );
  }
}