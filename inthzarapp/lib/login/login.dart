import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/landing_tbs/landing_tabs_home.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  final mobile_txt_controller = new TextEditingController();
  final name_txt_controller = new TextEditingController();

  Widget build(BuildContext context) {
    FocusNode myFocusNode = new FocusNode();

    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,

      extendBody: true,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                          color: HexColor("FAA51A"),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(150))),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 70,
                          ),
                          Image.asset(
                            "assets/logo.png",
                            height: 130,
                            width: 130,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(right: 20, top: 50,

                      child: GestureDetector(
                        onTap: (){

                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 0,show_appbar: true,)));

                        },
                        child: Text("SKIP",style: TextStyle(

                        fontSize:11 ,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400, // light
                        fontStyle: FontStyle.normal,
                        letterSpacing: 1







                  ),),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 60),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400, // light
                          fontStyle: FontStyle.normal,
                          letterSpacing: 1,

                        ),
                      ))
                ],
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  padding: const EdgeInsets.all(18.0),
                  child: TextField(
                    obscureText: false,
                    decoration: new InputDecoration(
                        alignLabelWithHint: true,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w300, // light
                            fontStyle: FontStyle.normal,
                            letterSpacing: 1,


                            fontSize: myFocusNode.hasFocus ? 18 : 18.0,
                            //I believe the size difference here is 6.0 to account padding
                            color: myFocusNode.hasFocus
                                ? HexColor("000000")
                                : HexColor("000000")),
                        labelText: 'MOBILE NO',
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(8.0),

                          borderSide: new BorderSide(
                            color: HexColor("E4E4E4"),
                          ),
                        ),
                        focusedBorder: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                            borderSide: new BorderSide(
                              color: HexColor("E4E4E4"),
                            ))),
                    style: new TextStyle(color: Colors.black),
                  )),
              Container(
                  padding: const EdgeInsets.all(18.0),
                  child: TextField(
                    decoration: new InputDecoration(
                        alignLabelWithHint: true,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelStyle: TextStyle(

                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w300, // light
                            fontStyle: FontStyle.normal,
                            letterSpacing: 1,



                            fontSize: myFocusNode.hasFocus ? 18 : 18.0,
                            //I believe the size difference here is 6.0 to account padding
                            color: myFocusNode.hasFocus
                                ? HexColor("000000")
                                : HexColor("000000")),
                        labelText: 'PASSWORD',
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(8.0),
                          borderSide: new BorderSide(
                            color: HexColor("E4E4E4"),
                          ),
                        ),
                        focusedBorder: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                            borderSide: new BorderSide(
                              color: HexColor("E4E4E4"),
                            ))),
                    style: new TextStyle(color: Colors.black),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 23,show_appbar: false,)));
                    },
                    child: Container(
                        margin: EdgeInsets.only(bottom: 12, right: 20),
                        child: Text(
                          "FORGOT PASSWORD?",
                          style: TextStyle(

                              color: Colors.black,
                              fontSize: 12,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w300, // light
                              fontStyle: FontStyle.normal,


                          ),
                        )),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: ButtonTheme(
                  minWidth: double.infinity,
                  height: 53,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 0,show_appbar: true,)));
                    //  Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => wifi_network()));
                    },
                    color: HexColor("966636"),
                    textColor: Colors.white,
                    child: Text("LOGIN".toUpperCase(),
                        style: TextStyle(fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400, // light
                          fontStyle: FontStyle.normal,
                          letterSpacing: 1
                        )),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,


                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 19,show_appbar: false,)));
                    },
                    child: Container(
                        margin: EdgeInsets.only(bottom: 12, right: 20, top: 60),
                        child: Text(
                          "New User? Register",
                          style: TextStyle(
                              fontSize: 12,

                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w300, // light
                              fontStyle: FontStyle.normal,
                              letterSpacing: 1

                          ),
                        )),
                  )
                ],
              ),
              SizedBox(height: 90,)
            ],
          ),
        ),
      ),
    );
  }
}
