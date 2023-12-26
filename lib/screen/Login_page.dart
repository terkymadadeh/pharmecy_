


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import 'package:pharmacy/constans/linkserver.dart';
import 'package:pharmacy/screen/navebar.dart';
import 'package:pharmacy/servies/get_All_product.dart';


class loginPage extends StatefulWidget {
  loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

//// for textfield
final _formKey = GlobalKey<FormState>();
final adminPhonControler = TextEditingController();
final adminPasswordControler = TextEditingController();

class _loginPageState extends State<loginPage> {
  /// منشان الربط

 
  sinIN() async {
    var response = await Api.postrequest(linklogin, {
    
      'phone number': adminPhonControler.text,
      'password': adminPasswordControler.text,
      
    });
    
    if (response["token"] != null) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Navebar(),
          ));
    }
  }
    // var headers = {'Accept': 'application/json'};
    // var request = http.MultipartRequest(
    //     'POST', Uri.parse('http://10.0.2.2:8000/api/register'));
    // request.fields.addAll({
    //   'name': 'terky1',
    //   'phone number': '099375727999887',
    //   'password': '101010101',
    //   'password confirmation': '101010101'
    // });

    // request.headers.addAll(headers);

    // http.StreamedResponse response = await request.send();

    // if (response.statusCode == 200) {
    //   print(await response.stream.bytesToString());
    // } else {
    //   print(response.statusCode);
    // }
  
  bool state = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        backgroundColor: Color(0xff9AD9EA),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            physics: BouncingScrollPhysics(),
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                margin: EdgeInsets.all(20),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: const Image(
                  image: AssetImage('images/logo.png'),
                  height: 200,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                textAlign: TextAlign.center,
                "PHARMACY",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Welcome Please login here ",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: adminPhonControler,
                  decoration: InputDecoration(
                    // border: OutlineInputBorder(),
                    label: Text("Enter your phone "),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: adminPasswordControler,
                  obscureText: state ? true : false,
                  decoration: InputDecoration(
                      // border: OutlineInputBorder(),
    
                      label: Text("Enter your password "),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: InkWell(
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
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: 
                  () async {
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
                        "LogIn",
                        style: TextStyle(
                          color: Color(0xff005D86),
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'or login with :',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: [
                    Text("Dont have any acounts",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        child: Text("  Regester ",
                            style: TextStyle(
                                fontSize: 17, color: Color(0xff213C52))))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
