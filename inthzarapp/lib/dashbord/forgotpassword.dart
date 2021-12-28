import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/landing_tbs/landing_tabs_home.dart';

import 'otppage.dart';

class forgotpassword extends StatefulWidget {
  @override
  _forgotpasswordState createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
  @override
  Widget build(BuildContext context) {
    FocusNode myFocusNode = new FocusNode();

    return new Scaffold(

      extendBody: true,


      body:
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
            // Positioned(
            //     right: 10,
            //     top: 10,
            //     child: Text("skip"))
          ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Text("FORGOT PASSWORD",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,letterSpacing: 1),))],),


          Container(
              margin: EdgeInsets.fromLTRB(0, 0,0, 0),
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                obscureText: false,
                decoration: new InputDecoration(
                    alignLabelWithHint: true,
                    floatingLabelBehavior: FloatingLabelBehavior.always,

                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w300,
                        letterSpacing: 1,
                        fontSize: myFocusNode.hasFocus ? 20 : 18.0,//I believe the size difference here is 6.0 to account padding
                        color: myFocusNode.hasFocus ? HexColor("000000"): HexColor("000000")),
                    labelText: 'Enter Mobile No'.toUpperCase(),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                      borderSide: new BorderSide(
                        color:  HexColor("E4E4E4"),
                      ),
                    ),
                    focusedBorder: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(8.0),
                        borderSide: new BorderSide(
                          color:  HexColor("E4E4E4"),
                        ))),
                style: new TextStyle(color: Colors.black),
              )),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20,top: 35),
            child: ButtonTheme(
              minWidth: double.infinity,
              height: 53,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60.0),
                ),
                onPressed: () {

                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>tabs_home(seleced_index: 24,show_appbar: false,)));



                },
                color:HexColor("966636"),
                textColor: Colors.white,
                child: Text("CONTINUE".toUpperCase(),
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                      letterSpacing: 1,)),
              ),
            ),
          ),

        ],),),);
  }
}
