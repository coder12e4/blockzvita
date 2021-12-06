import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:inthzarapp/constants/HexColor.dart';
class profile_edit extends StatefulWidget {
  @override
  _profile_editState createState() => _profile_editState();
}

class _profile_editState extends State<profile_edit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.keyboard_backspace,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Profile Edit".toUpperCase(),
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
                  Text("Name",

                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400, // light
                        fontStyle: FontStyle.normal,
                        letterSpacing: 1



                    ),
                  ),
                  TextField(
                    decoration: new InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 0),
                       hintText: "Your Name",
                        hintStyle: TextStyle(fontSize: 14,color: Colors.black),
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
                  Text("Mobile",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400, // light
                      fontStyle: FontStyle.normal,
                      letterSpacing: 1
                  ),),
                  TextField(

                    decoration: new InputDecoration(
                        hintText: "+91 1234567890",
                        hintStyle: TextStyle(fontSize: 14,color: Colors.black),

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
                  Text("Date of Birth",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400, // light
                      fontStyle: FontStyle.normal,
                      letterSpacing: 1
                  ),),
                  TextField(
                    decoration: new InputDecoration(
                        hintText: "Add+",
                        hintStyle: TextStyle(fontSize: 14,color: Colors.black),
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
                  Text("Email Id",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400, // light
                      fontStyle: FontStyle.normal,
                      letterSpacing: 1
                  ),),
                  TextField(
                    decoration: new InputDecoration(
                        hintText: "Add+",
                        hintStyle: TextStyle(fontSize: 14,color: Colors.black),
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
                    //  Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> landing()));
                  },
                  color: HexColor("966636"),
                  textColor: Colors.white,
                  child: Text("SAVE".toUpperCase(),
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
