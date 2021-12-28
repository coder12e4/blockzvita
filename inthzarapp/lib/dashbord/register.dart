import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/landing_tbs/landing_tabs_home.dart';


class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    FocusNode myFocusNode = new FocusNode();

    return new Scaffold(

      extendBody: true,

      body: SingleChildScrollView(
        child: Container(
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
                child: Container(child: Column(children: [SizedBox(height: 30,),
                  Image.asset("assets/logo.png",height: 170,width: 138,)

                ],),),
              ),

            ],),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text("REGISTER",style: TextStyle(fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400, // light
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0.4
                  ),))],),

            Container(
                margin: EdgeInsets.fromLTRB(0, 0,0, 0),
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  obscureText: false,
                  decoration: new InputDecoration(
                      alignLabelWithHint: true,
                      floatingLabelBehavior: FloatingLabelBehavior.always,

                      labelStyle: TextStyle(
                          fontSize: myFocusNode.hasFocus ? 20 : 14.0,//I believe the size difference here is 6.0 to account padding
                          color: myFocusNode.hasFocus ? HexColor("000000"): HexColor("000000"),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400, // light
                          fontStyle: FontStyle.normal,
                          letterSpacing: 1


                      ),
                      labelText: 'MOBILE NO',
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
                margin: EdgeInsets.fromLTRB(0, 0,0, 0),
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  obscureText: false,
                  decoration: new InputDecoration(
                      alignLabelWithHint: true,
                      floatingLabelBehavior: FloatingLabelBehavior.always,

                      labelStyle: TextStyle(
                          fontSize: myFocusNode.hasFocus ? 20 : 14.0,//I believe the size difference here is 6.0 to account padding
                          color: myFocusNode.hasFocus ? HexColor("000000"): HexColor("000000"),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400, // light
                          fontStyle: FontStyle.normal,
                          letterSpacing: 1

                      ),
                      labelText: 'YOUR NAME',
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
                margin: EdgeInsets.fromLTRB(0, 0,0, 0),
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  obscureText: false,
                  decoration: new InputDecoration(
                      alignLabelWithHint: true,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelStyle: TextStyle(
                          fontSize: myFocusNode.hasFocus ? 20 : 14.0,//I believe the size difference here is 6.0 to account padding
                          color: myFocusNode.hasFocus ? HexColor("000000"): HexColor("000000"),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400, // light
                          fontStyle: FontStyle.normal,
                          letterSpacing: 1

                      ),
                      labelText: 'YOUR PASSWORD',
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
              margin: EdgeInsets.only(left: 20,right: 20,top: 10),
              child: ButtonTheme(
                minWidth: double.infinity,
                height: 53,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                  onPressed: () {

                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 20,show_appbar: false,)));

                  },
                  color:HexColor("966636"),
                  textColor: Colors.white,
                  child: Text("CONTINUE".toUpperCase(),
                      style: TextStyle(fontSize: 14,

                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400, // light
                          fontStyle: FontStyle.normal,
                          letterSpacing: 1

                      )),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 30,bottom: 30),
              child:  Row(children: [

              Expanded(child: Divider(height: 1,thickness: 1,color: HexColor("E2E2E2"),)),
              Text("  OR CONNECT WITH ",style: TextStyle(fontWeight: FontWeight.w300,letterSpacing: 1,fontSize: 12),),
              Expanded(child: Divider(height: 1,thickness: 1,color: HexColor("E2E2E2"),)),


            ],), width: double.infinity,),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("fb.png"),
                  SizedBox(width: 8,),
                  Image.asset("gg.png"),



              ],), width: double.infinity,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 10,show_appbar: false,)));
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 100),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Text("Already registered? Login",style: TextStyle(fontWeight: FontWeight.w300,letterSpacing: 1,fontSize: 12),),

                  ],), width: double.infinity,),
            ),


          ],),),
      ),);
  }
}
