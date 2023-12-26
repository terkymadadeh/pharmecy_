import 'package:flutter/material.dart';
import 'package:pharmacy/screen/Login_page.dart';
import 'package:pharmacy/screen/Regester_Page.dart';
import 'package:pharmacy/screen/home_page.dart';
import 'package:pharmacy/screen/navebar.dart';
import 'package:pharmacy/screen/welcomePage.dart';

void main() {
  runApp(song());
}

class song extends StatelessWidget {
  const song({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: { 
        'Navebar' :(context) => Navebar(),
        'homePage': (context) => Homepage(),
        'register': (context) => RegesterPage(), 
        'login' :(context) => loginPage(),
      },
      debugShowCheckedModeBanner: false,
      //initialRoute: 'register' ,
      home: WlcomePage(),
    );
  }
}
