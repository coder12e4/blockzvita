import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/landing_tbs/landing_tabs_home.dart';

class location_dummy extends StatefulWidget {
  @override
  _location_dummyState createState() => _location_dummyState();
}

class _location_dummyState extends State<location_dummy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        actions: [


        ],
        leading: GestureDetector(

            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_backspace,color: Colors.black,)),
        backgroundColor: Colors.white,title: Text("Select Location".toUpperCase(),style: TextStyle( letterSpacing: 1,
          fontWeight: FontWeight.w400, // light
          fontStyle: FontStyle.normal,
          fontSize: 16,
          color: Colors.black),),),

      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 70,left: 50),
        child: FloatingActionButton(

          child: Icon(Icons.gps_fixed,color: HexColor("DADADA"),),
          backgroundColor: Colors.white,
          onPressed: () {
            setState(() {

            });
          },
        ),
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("locationw.png"),fit: BoxFit.cover,),

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(child: SizedBox()),


            Container(
              margin: EdgeInsets.only(left: 0,right: 0,top: 0),
              child: ButtonTheme(
                minWidth: double.infinity,
                height: 53,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 0,show_appbar: true,)));

                    //  Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> landing()));

                  },
                  color:HexColor("966636"),
                  textColor: Colors.white,
                  child: Text("Confirm".toUpperCase(),
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
