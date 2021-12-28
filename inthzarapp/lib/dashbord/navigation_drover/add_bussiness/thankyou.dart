import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/landing_tbs/landing_tabs_home.dart';
class thankyou extends StatefulWidget {
  @override
  _thankyouState createState() => _thankyouState();
}

class _thankyouState extends State<thankyou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      width: double.infinity,
      child: Container(
        color: HexColor("ffffff"),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
        Container(child: Image.asset("tnku.png",height: 90,width: 90,),),

         SizedBox(height: 66,),
          Text("Thank you".toUpperCase(),style: TextStyle(color: HexColor("966636"),wordSpacing: 1,fontWeight: FontWeight.w500,fontSize: 32),),
          SizedBox(height: 20,),
          Text(" Your application was successfully submitted\n Our team will get back to you soon!",textAlign: TextAlign.center,
            style: TextStyle(color: HexColor("2D2D2D"),wordSpacing: 1,fontWeight: FontWeight.w400,fontSize: 13,

              height: 1.9,
              letterSpacing: 0.4,
            ),),
          SizedBox(height: 60,),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: ButtonTheme(
              minWidth:180,
              height: 57,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60.0),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext) => tabs_home(seleced_index: 0,show_appbar: true,)));
                },
                color: HexColor("966636"),
                textColor: Colors.white,
                child: Text("DONE".toUpperCase(),
                    style: TextStyle(fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400, // light
                        fontStyle: FontStyle.normal,
                        letterSpacing: 1
                    )),
              ),
            ),
          ),

        ],),
      ),),);
  }
}
