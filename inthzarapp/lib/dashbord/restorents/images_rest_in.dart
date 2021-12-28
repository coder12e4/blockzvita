import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:inthzarapp/constants/HexColor.dart';
class images_rest_in extends StatefulWidget {
  @override
  _images_rest_inState createState() => _images_rest_inState();
}

class _images_rest_inState extends State<images_rest_in> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: Container(
  margin: EdgeInsets.only(top: 19,left: 20,right: 20,bottom: 70),
  width: double.infinity,
  child: ListView.builder(
    itemCount: 10,
    itemBuilder: (BuildContext context, int index) {
      return new Container(
margin: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.asset(
                        "assets/rect_image.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(height: 8,),


                    Text(
                      "Name of Restaurant",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: .5,
                          color: HexColor("1A1A1A")),
                    )

                  ],
                ),
              ),
            ),

            SizedBox(width: 20,),

            Expanded(child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.asset(
                      "assets/rect_image.png",

                      fit: BoxFit.fill,
                    ),
                  ),

                  SizedBox(height: 8,),

                  Text(
                    "Name of Restaurant",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        letterSpacing: .5,
                        color: HexColor("1A1A1A")),
                  )

                ],
              ),
            ),)

          ],),);
    },
  ),
),



    );
  }
}
