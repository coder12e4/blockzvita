
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:inthzarapp/constants/HexColor.dart';
class rest_products extends StatefulWidget {
  @override
  _rest_productsState createState() => _rest_productsState();
}

class _rest_productsState extends State<rest_products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        margin: EdgeInsets.only(top: 19,left: 20,right: 20,bottom: 70),
        width: double.infinity,
        child: ListView.builder(
          itemCount: 1,
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
                          ),
                          SizedBox(height: 4,),
                          Text(
                            "Company Name",
                            style: TextStyle(

                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                letterSpacing: .5,
                                color: HexColor("3E3E3E")),
                          ),
                          SizedBox(height: 4,),
                          Text(
                            "Description of product",
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                letterSpacing: .5,
                                color: HexColor("3E3E3E")),
                          ),
                          SizedBox(height: 4,),
                          Text(
                            "\u20B91200",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                letterSpacing: .5,
                                color: HexColor("000000")),
                          ),
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
                        ),
                        SizedBox(height: 4,),
                        Text(
                          "Company Name",
                          style: TextStyle(

                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              letterSpacing: .5,
                              color: HexColor("3E3E3E")),
                        ),
                        SizedBox(height: 4,),
                        Text(
                          "Description of product",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              letterSpacing: .5,
                              color: HexColor("3E3E3E")),
                        ),
                        SizedBox(height: 4,),
                        Text(
                          "\u20B91200",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: .5,
                              color: HexColor("000000")),
                        ),
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
