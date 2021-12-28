import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:inthzarapp/constants/HexColor.dart';
class rest_videos extends StatefulWidget {
  @override
  _rest_videosState createState() => _rest_videosState();
}

class _rest_videosState extends State<rest_videos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 19,left: 20,right: 20,bottom: 100),
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
                          
                         Stack(
                           children: [



                             ClipRRect(
                               borderRadius: BorderRadius.circular(0.0),
                               child: Image.asset(
                                 "assets/rect_image.png",
                                 fit: BoxFit.fill,
                               ),
                             ),
                             
                             Positioned(left: 0,right: 0,top:0 ,bottom: 0,child: Icon(Icons.play_circle_outline,color: Colors.white60,size: 34,))

                           ],
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
                        Stack(
                          children: [



                            ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.asset(
                                "assets/rect_image.png",
                                fit: BoxFit.fill,
                              ),
                            ),

                            Positioned(left: 0,right: 0,top:0 ,bottom: 0,child: Icon(Icons.play_circle_outline,color: Colors.white60,size: 34,))

                          ],
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
