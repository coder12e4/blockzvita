import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:inthzarapp/constants/HexColor.dart';
class nodata extends StatefulWidget {
  @override
  _nodataState createState() => _nodataState();
}

class _nodataState extends State<nodata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: Container(

  width: double.infinity,
  color: Colors.white,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset("assets/nonotifications.png",height: 100,width: 100,),
      SizedBox(height: 8,),
      Text("NO Notifications".toUpperCase(),style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400,letterSpacing: 1),)
      ,SizedBox(height: 8,),
      Text("Sorry! No Notifications".toUpperCase(),style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400,letterSpacing: 1),)
      ,SizedBox(height: 60,),
      ButtonTheme(
        minWidth: 100,
        height: 45,
        child: Container(
          margin: EdgeInsets.only(bottom: 30),
          child: RaisedButton(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60.0),
            ),
            onPressed: () {
            //  Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => job_register()));
            },
            color: HexColor("EBEBEB"),
            textColor: Colors.white,
            child: Text("Retry",
                style: TextStyle(fontSize: 13,
                   color: Colors.black,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400, // light
                    fontStyle: FontStyle.normal,
                    letterSpacing: 1
                )),
          ),
        ),
      )



    ],
  ),
),


    );
  }
}
