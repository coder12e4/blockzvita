import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/landing_tbs/landing_tabs_home.dart';

class Change_password extends StatefulWidget {
  @override
  _Change_passwordState createState() => _Change_passwordState();
}

class _Change_passwordState extends State<Change_password> {
  @override
  Widget build(BuildContext context) {
    FocusNode myFocusNode = new FocusNode();

    return new Scaffold(body:
    Container(
      color: Colors.white,
      child: Column(
        children: [
          Stack(children: [
            Container(width: double.infinity,height: 200,),
            Positioned(
              left: 0,
              top: 0,

              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: HexColor("FAA51A"),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(100))
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(child: Column(children: [SizedBox(height: 50,),
                Image.asset("assets/logo.png",height: 170,width: 138,)

              ],),),
            ),

          ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Text("CHANGE PASSWORD",style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400, // light
                    fontStyle: FontStyle.normal,
                    letterSpacing: 1


                ),))],),

          Container(
            margin: EdgeInsets.fromLTRB(0, 10,0, 0),
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                obscureText: true,

                decoration: new InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,

                    alignLabelWithHint: true,
                    labelStyle: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300, // light
                        fontStyle: FontStyle.normal,
                        letterSpacing: 1,


                        fontSize: myFocusNode.hasFocus ? 18 : 18.0,
                        color: HexColor("000000")

                    ),
                    labelText: 'NEW PASSWORD',
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                      borderSide: new BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(8.0),
                        borderSide: new BorderSide(
                          color:HexColor("E4E4E4"),
                        ))),
                style: new TextStyle(color: Colors.black),
              )),
          Container(
              margin: EdgeInsets.fromLTRB(0, 10,0, 0),
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                obscureText: true,

                decoration: new InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,

                    alignLabelWithHint: true,
                    labelStyle: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300, // light
                        fontStyle: FontStyle.normal,
                        letterSpacing: 1,


                        fontSize: myFocusNode.hasFocus ? 18 : 18.0,



                        color: HexColor("000000")),


                    labelText: 'Confirm Password'.toUpperCase(),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                      borderSide: new BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(8.0),
                        borderSide: new BorderSide(
                          color:HexColor("E4E4E4"),
                        ))),
                style: new TextStyle(color: Colors.black),
              )),




          Container(
            margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: ButtonTheme(
              minWidth: double.infinity,
              height: 53,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60.0),
                ),
                onPressed: () {

                //  Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>forgotpassword()));
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>tabs_home(seleced_index: 10,show_appbar: false,)));

                },
                color:HexColor("966636"),
                textColor: Colors.white,
                child: Text("CONTINUE".toUpperCase(),
                    style: TextStyle(fontSize: 14)),
              ),
            ),
          ),

        ],),),);
  }
}
