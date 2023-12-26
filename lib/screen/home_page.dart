import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("home_page"),
          backgroundColor: Color(0xff9AD9EA),
        ),
        drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Color(0xff9AD9EA)),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage:
                          AssetImage("images/photo_2023-12-25_21-12-38.jpg"),
                    )
                  ],
                )),
            ListTile(
              title: Text("logout"),
              leading: Icon(Icons.logout),
              onTap: () {
              
                Navigator.pushNamed(context, 'register');
              },
            )
          ],
        )),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Stack(clipBehavior: Clip.none, children: [
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      blurRadius: 50,
                      color: Colors.grey.withOpacity(.1),
                      offset: const Offset(10, 10),
                      spreadRadius: 20,
                    )
                  ]),
                  height: 250,
                  width: 200,
                  child: const Card(
                    elevation: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 60,
                  left: 60,
                  child: Image.asset(
                    "images/head.jpg",
                    height: 100,
                  ),
                ),
                Positioned(
                  top: 130,
                  left: 10,
                  child: Container(
                    height: 50,
                    width: 180,
                    color: Colors.grey.shade300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            r"$" " 225",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        GestureDetector(
                            //onTap: ,
                            child: Icon(Icons.add))
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(" headache",
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                  ),
                ),
              ]),
            );
          },
        ),
      ),
    );
  }
}
