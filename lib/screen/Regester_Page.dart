import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'package:http/http.dart' as http;
import 'package:pharmacy/constans/linkserver.dart';

import 'package:pharmacy/screen/navebar.dart';

import 'package:pharmacy/servies/get_All_product.dart';

class RegesterPage extends StatefulWidget {
  RegesterPage({super.key});

  @override
  State<RegesterPage> createState() => _RegesterPageState();
}

final _formKey = GlobalKey<FormState>();
final adminNameControler = TextEditingController();
final adminPhonControler = TextEditingController();
final adminPasswordControler = TextEditingController();
final adminConfirmPasswordControler = TextEditingController();

class _RegesterPageState extends State<RegesterPage> {
  ////////   هاد التابع كرمال الربط=================

  sinIN() async {
    var response = await Api.postrequest(linkSignup, {
      'name': adminNameControler.text,
      'phone number': adminPhonControler.text,
      'password': adminPasswordControler.text,
      'password confirmation': adminConfirmPasswordControler.text,
    });

    if (response["token"] != null) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Navebar(),
          ));
    }
  }

  // Future registerUser(
  //     String phone, String password, String name, String conf) async {
  //   var response = await http.post(
  //       Uri.parse('http://10.0.2.2:8000/api/register'),
  //       body: <String, String>{
  //         'password_confirmation': conf,
  //         'phone_number': phone,
  //         'password': password,
  //         'name': name,
  //       },
  //       headers: <String, String>{
  //         'Accept': 'application/json',
  //       });

  //   print(response.statusCode);
  //   if (response.statusCode == 200) {
  //     var js = jsonDecode(response.body);
  //     String token = js["token"];
  //     print("the token is $token");
  //   } else {
  //     print("erorr");
  //   }
  // }

//كرمال اخفاء كلمة السر واظهارها //
  bool state = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xff9AD9EA),
        child: Form(
          key: _formKey,
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Container(
                margin: EdgeInsets.all(20),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: const Image(
                  image: AssetImage('images/logo.png'),
                  height: 300,
                ),
              ),
              const Text(
                textAlign: TextAlign.center,
                " PHARMACY",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Welcome  Regester  Login Here",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  controller: adminNameControler,
                  decoration: InputDecoration(
                    // border: OutlineInputBorder(),
                    label: Text("Enter full name "),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: adminPhonControler,
                  decoration: InputDecoration(
                    // border: OutlineInputBorder(),
                    label: Text("Enter your phone "),
                    prefixIcon: Icon(Icons.phone),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextFormField(
                  controller: adminPasswordControler,
                  validator: (value) {
                    if (value != null && value.length >= 8) {
                      return null;
                    }
                    return "password is required ";
                  },
                  obscureText: state,
                  decoration: InputDecoration(
                      // border: OutlineInputBorder(),
                      label: Text("Enter your password "),
                      prefixIcon: Icon(Icons.lock),
                      suffix: InkWell(
                        onTap: () {
                          if (state == true) {
                            state = false;
                          } else
                            state = true;
                          setState(() {});
                        },
                        child: state
                            ? Icon(CupertinoIcons.eye_slash_fill)
                            : Icon(CupertinoIcons.eye_fill),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextFormField(
                  validator: (value) {
                    if (value != adminPasswordControler.text) {
                      return "confirm password should matched password";
                    }
                    if (value != null && value.length >= 8) {
                      return null;
                    }
                    return "password is required ";
                  },
                  controller: adminConfirmPasswordControler,
                  obscureText: state,
                  decoration: InputDecoration(

                      // border: OutlineInputBorder(),
                      label: Text("confirm your password "),
                      prefixIcon: Icon(Icons.lock),
                      suffix: InkWell(
                        onTap: () {
                          if (state == true) {
                            state = false;
                          } else
                            state = true;
                          setState(() {});
                        },
                        child: state
                            ? Icon(CupertinoIcons.eye_slash_fill)
                            : Icon(CupertinoIcons.eye_fill),
                      )),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  if (_formKey.currentState!.validate()) await sinIN();
                },
                child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue.shade300),
                    child: Center(
                      child: Text(
                        "Regester",
                        style: TextStyle(
                          color: Color(0xff213C52),
                        ),
                      ),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Row(
                  children: [
                    const Text("Do  yoe have  acount",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        child: Text("  login ",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xff005D86)))),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
