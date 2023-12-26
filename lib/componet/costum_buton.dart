import 'package:flutter/material.dart';
import 'package:pharmacy/screen/navebar.dart';
//import 'package:pharmacy/screen/navebar.dart';

// ignore: must_be_immutable
class Buton extends StatelessWidget {
  Buton({required this.titel});
  String? titel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return Navebar();
          },
        ));
      },
      child: Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue.shade300),
          child: Center(
            child: Text(
              "$titel",
              style: TextStyle(
                color: Color(0xff005D86),
              ),
            ),
          )),
    );
  }
}
