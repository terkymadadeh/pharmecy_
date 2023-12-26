import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyProfile extends StatelessWidget {
  MyProfile({this.name, this.number, this.dateCeated});
  String? name;
  String? number;
  String? dateCeated;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 80,
                width: double.infinity,
                color: Color(0xff8DC935),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "My Profile",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Image(
                      image: AssetImage("images/photo_2023-12-25_21-12-38.jpg"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "My Name is :   $name",
              style: TextStyle(fontSize: 30, color: Color(0xff8DC935)),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 10,
              thickness: 1,
              color: Color(0xff8DC935),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "My Number is :   $number",
              style: TextStyle(fontSize: 30, color: Color(0xff8DC935)),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 10,
              thickness: 1,
              color: Color(0xff8DC935),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "My account was created on date "
              " $number",
              style: TextStyle(fontSize: 20, color: Color(0xff8DC935)),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 10,
              thickness: 1,
              color: Color(0xff8DC935),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "if you finsh from this account can  you LogOut  ",
              style: TextStyle(fontSize: 15, color: Color(0xff8DC935)),
            ),
            GestureDetector(
              child: Text("logout"),
            )
          ],
        ),
        
      ),
    );
  }
}
