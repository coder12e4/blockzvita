import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/landing_tbs/landing_tabs_home.dart';

class about_us extends StatefulWidget {
  @override
  _about_usState createState() => _about_usState();
}

class _about_usState extends State<about_us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        actions: [

        ],
        leading: GestureDetector(

            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 0,show_appbar: true,)));
            },
            child: Icon(Icons.keyboard_backspace,color: Colors.black,)),backgroundColor: Colors.white,title: Text("ABOUT US",style: TextStyle( letterSpacing: 0.5,
          fontWeight: FontWeight.w400, // light
          fontStyle: FontStyle.normal,
          color: Colors.black),),),
      body: SingleChildScrollView(
        child: Container(child: Column(children: [

          Container(
            padding: EdgeInsets.only(left: 15,top: 20,right: 15,bottom: 20),
            margin: EdgeInsets.only(left: 9,right: 9,top: 0),



            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text("HELP HEADING 123",style: TextStyle(
                    fontSize: 13,
                    letterSpacing: 0.4,
                    fontWeight: FontWeight.w400, // light
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Roboto'
                ),),

                SizedBox(height: 10,),

                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  textAlign: TextAlign.justify,style: TextStyle(
                      color: HexColor("7A7A7A"),
                      fontSize: 12,
                      height: 1.9,
                      letterSpacing: 0.4,
                      fontWeight: FontWeight.w400, // light
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Roboto'


                  ),),

                SizedBox(height: 10,),



                Text("HELP HEADING 123",style: TextStyle(
                    fontSize: 13,
                    letterSpacing: 0.4,
                    fontWeight: FontWeight.w400, // light
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Roboto'
                ),),

                SizedBox(height: 10,),

                Text("*Lorem Ipsum is simply dummy text of the printing and \n"
                    "*typesetting industry.Lorem Ipsum is simply\n"
                    "* dummy text of the\n"
                    "* printing and typesetting industry.",
                  textAlign: TextAlign.left,style: TextStyle(
                      color: HexColor("7A7A7A"),
                      fontSize: 12,
                      height: 1.9,
                      letterSpacing: 0.4,
                      fontWeight: FontWeight.w400, // light
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Roboto'


                  ),),

                SizedBox(height: 10,),
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  textAlign: TextAlign.justify,style: TextStyle(
                      color: HexColor("7A7A7A"),
                      fontSize: 12,
                      height: 1.9,
                      letterSpacing: 0.4,
                      fontWeight: FontWeight.w400, // light
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Roboto'


                  ),),

                SizedBox(height: 15,),
                Text("HELP HEADING 123",style: TextStyle(
                    fontSize: 13,
                    letterSpacing: 0.4,
                    fontWeight: FontWeight.w400, // light
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Roboto'
                ),),

                SizedBox(height: 10,),

                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  textAlign: TextAlign.justify,style: TextStyle(
                      color: HexColor("7A7A7A"),
                      fontSize: 12,
                      height: 1.9,
                      letterSpacing: 0.4,
                      fontWeight: FontWeight.w400, // light
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Roboto'


                  ),),

                SizedBox(height: 10,),



              ],
            ),
          )





    ],),),
      ),);
  }
}
