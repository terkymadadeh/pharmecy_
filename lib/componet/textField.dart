import 'package:flutter/material.dart';

// ignore: must_be_immutable
class textfield extends StatelessWidget {
  textfield({super.key, this.hinttext});
  String? hinttext; 
    final adminecontroller = TextEditingController();
   
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(1, -1),
          ),
        ],
      ),
      child: TextField( 
        controller: adminecontroller,
        decoration: InputDecoration(
          hintText: hinttext,
          fillColor: Colors.white,
          filled: true,
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Colors.blue, width: 4, style: BorderStyle.solid),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Colors.blue, width: 4, style: BorderStyle.solid),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Colors.blue, width: 4, style: BorderStyle.solid),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(width: 4, style: BorderStyle.solid),
          ),
        ),
      ),
    );
  }
}
/* 

Container(
     clipBehavior: Clip.antiAlias,
     decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
             color: Colors.black.withOpacity(0.1),
             blurRadius: 10,
             offset: Offset(1, -1),
          ),
        ],
     ),
     child: TextField( 
        hintText: hinttext,
         decoration: InputDecoration(
             fillColor: Colors.white,
             filled: true,
             disabledBorder: UnderlineInputBorder(
                 borderSide: BorderSide(
                     color: Colors.blue, width: 4, style: BorderStyle.solid),
                 ),
                 enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue, width: 4, style: BorderStyle.solid),
                 ),
                 focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue, width: 4, style: BorderStyle.solid),
                 ),
                 errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 4, style: BorderStyle.solid),
                 ),
            ),
         ),
     )
*/