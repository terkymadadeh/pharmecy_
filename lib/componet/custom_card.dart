import 'package:flutter/material.dart';
import 'package:pharmacy/componet/model.dart';


// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  CustomCard({this.product});
  Productmodels? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(clipBehavior: Clip.none, children: [
        Container(
          height: 200,
          width: 200,
          child: Card(
            elevation: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("shose",
                    style: TextStyle(color: Colors.grey, fontSize: 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "shose",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.favorite, color: Colors.red),
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
//         Positioned(
//           bottom: 100,
//           left: 25,
//           child: Image.network( 
// "https://images.unsplash.com/photo-1575537302964-96cd47c06b1b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHNob2VzfGVufDB8fDB8fHww"
//            , height: 90,
//           ),
//         ),
      ]),
    );
  }
}
