import 'package:flutter/material.dart';
import 'package:pharmacy/screen/MyProfile.dart';
import 'package:pharmacy/screen/home_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class Navebar extends StatefulWidget {
  Navebar({this.nAme, this.number, this.dateCeated});
  String? nAme;
  String? number;
  String? dateCeated;

  @override
  State<Navebar> createState() => _HomePageState();
}

class _HomePageState extends State<Navebar> {
  int _selctedScreen = 0;
  final _screen = [
    const Homepage(),
    MyProfile(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      backgroundColor: Color(0xff9AD9EA),
      body: _screen[_selctedScreen],
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.red,
        child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xff9AD9EA),
            unselectedItemColor: Colors.black,
            selectedLabelStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            currentIndex: _selctedScreen,
            onTap: (index) {
              setState(
                () {
                  _selctedScreen = index;
                },
              );
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: "home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: " my profile",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.cartPlus,
                ),
                label: "my cart",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: "settings",
              ),
            ]),
      ),
    );
  }
}
