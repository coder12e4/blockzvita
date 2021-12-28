import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';

class c_password extends StatefulWidget {
  @override
  _c_passwordState createState() => _c_passwordState();
}

class _c_passwordState extends State<c_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.keyboard_backspace,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "CHANGE PASSWORD",
          style: TextStyle(color: Colors.black,
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400, // light
              fontStyle: FontStyle.normal,
              letterSpacing: 1

          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 41, left: 31, right: 31),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Current Password",

                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400, // light
                      fontStyle: FontStyle.normal,
                      letterSpacing: 1



                  ),
                  ),
                  TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: new InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 0),
                        alignLabelWithHint: true,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: new UnderlineInputBorder(
                          borderRadius: new BorderRadius.circular(8.0),
                          borderSide: new BorderSide(
                            width: 2,
                            color: HexColor("E4E4E4"),
                          ),
                        ),
                        focusedBorder: new UnderlineInputBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                            borderSide: new BorderSide(
                              color: HexColor("E4E4E4"),
                            ))),
                    style: new TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Text("New Password",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400, // light
                      fontStyle: FontStyle.normal,
                      letterSpacing: 1
                  ),),
                  TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: new InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 0),
                        alignLabelWithHint: true,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: new UnderlineInputBorder(
                          borderRadius: new BorderRadius.circular(8.0),
                          borderSide: new BorderSide(
                            color: HexColor("E4E4E4"),
                          ),
                        ),
                        focusedBorder: new UnderlineInputBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                            borderSide: new BorderSide(
                              color: HexColor("E4E4E4"),
                            ))),
                    style: new TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Text("Confirm Password",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400, // light
                      fontStyle: FontStyle.normal,
                      letterSpacing: 1
                  ),),
                  TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: new InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 0),
                        alignLabelWithHint: true,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: new UnderlineInputBorder(
                          borderRadius: new BorderRadius.circular(8.0),
                          borderSide: new BorderSide(
                            color: HexColor("E4E4E4"),
                          ),
                        ),
                        focusedBorder: new UnderlineInputBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                            borderSide: new BorderSide(
                              color: HexColor("E4E4E4"),
                            ))),
                    style: new TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            Container(
              margin: EdgeInsets.only(left: 0, right: 0, top: 0),
              child: ButtonTheme(
                minWidth: double.infinity,
                height: 53,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: HexColor("966636"),
                  textColor: Colors.white,
                  child: Text("SUBMIT".toUpperCase(),
                      style: TextStyle(fontSize: 14)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
