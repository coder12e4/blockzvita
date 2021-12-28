import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/landing_tbs/landing_tabs_home.dart';

import 'landing.dart';

class otp_page extends StatefulWidget {
  @override
  _otp_pageState createState() => _otp_pageState();
}

class _otp_pageState extends State<otp_page> {
  final otp_1_controller = new TextEditingController();
  final otp_2_controller = new TextEditingController();
  final otp_3_controller = new TextEditingController();
  final otp_4_controller = new TextEditingController();

  final _thirdnumber = new TextEditingController();
  final _firstnumber = new TextEditingController();
  final _secondnumber= new TextEditingController();
  final _fourthnumber=new TextEditingController();


  FocusNode textSecondFocusNode = new FocusNode();
  FocusNode textThirdFocusNode = new FocusNode();
  FocusNode textFourtFocusNode = new FocusNode();
  FocusNode textFirstFocusNode = new FocusNode();



  @override
  Widget build(BuildContext context) {
    FocusNode myFocusNode = new FocusNode();
    return new Scaffold(
      extendBody: true,

      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 240,
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
              ],
            ),


            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Text("ENTER OTP",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,letterSpacing: 1),)],
            ),



      Container(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
              child: Container(
                width: 45,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3)
                ),
                child: TextFormField(
                  focusNode: textFirstFocusNode,
                  onChanged: (String value){
                    if(value.length == 1){
                      FocusScope.of(context).requestFocus(textSecondFocusNode);
                    }

                  },
                  controller: _firstnumber,
                  inputFormatters: [
                    new LengthLimitingTextInputFormatter(1),
                  ],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                  decoration: InputDecoration(
                    filled: true,

                    fillColor: Colors.white,
                    focusedBorder: UnderlineInputBorder(

                      borderSide: BorderSide(color: HexColor("FAA51A")),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: HexColor("C4C4C4")),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              )
          ),


          SizedBox(
            width: 15,
          ),
          SizedBox(
              child: Container(
                width: 45,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0)
                ),
                child: TextFormField(
                  onChanged: (String value){
                    if(value.length == 1){
                      FocusScope.of(context).requestFocus(textThirdFocusNode);
                    }
                    if(value.length == 0){
                      FocusScope.of(context).requestFocus(textFirstFocusNode);
                    }
                  },
                  focusNode:  textSecondFocusNode,
                  controller: _secondnumber,
                  inputFormatters: [
                    new LengthLimitingTextInputFormatter(1),
                  ],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: HexColor("FAA51A")),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: HexColor("C4C4C4")),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              )
          ),
          SizedBox(
            width: 15,
          ),
          SizedBox(
              child: Container(
                width: 45,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0)
                ),
                child: TextFormField(
                  onChanged: (String value){
                    if(value.length == 1){
                      FocusScope.of(context).requestFocus(textFourtFocusNode);
                    }
                    if(value.length == 0){
                      FocusScope.of(context).requestFocus(textSecondFocusNode);
                    }

                  },
                  focusNode: textThirdFocusNode,
                  controller: _thirdnumber,
                  inputFormatters: [
                    new LengthLimitingTextInputFormatter(1),
                  ],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: HexColor("FAA51A")),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: HexColor("C4C4C4")),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              )
          ),
          SizedBox(
            width: 15,
          ),
          SizedBox(
              child: Container(
                width: 45,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0)
                ),
                child: TextFormField(
                  onChanged: (String value){
                    if(value.length == 0){
                      FocusScope.of(context).requestFocus(textThirdFocusNode);
                    }

                  },
                  focusNode: textFourtFocusNode,
                  controller: _fourthnumber,
                  inputFormatters: [
                    new LengthLimitingTextInputFormatter(1),
                  ],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: HexColor("FAA51A")),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: HexColor("C4C4C4")),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              )
          ),

        ],
      ),),

SizedBox(height: 40,),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: ButtonTheme(
                minWidth: double.infinity,
                height: 50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 25,show_appbar: false,)));
                  },
                  color: HexColor("966636"),
                  textColor: Colors.white,
                  child: Text("Continue".toUpperCase(),
                      style: TextStyle(fontSize: 14)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 40, left: 25, right: 25),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 23,show_appbar: false,)));

                      },
                      child: Text(
                        "Change Number?",
                        textAlign: TextAlign.start,

                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,letterSpacing: 1)
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Resend Otp",
                      textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,letterSpacing: 1)
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
