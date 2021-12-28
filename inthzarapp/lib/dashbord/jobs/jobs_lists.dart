import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/dashbord/filter/filter.dart';
import 'package:inthzarapp/landing_tbs/landing_tabs_home.dart';
import 'enquiry_page.dart';
import 'job_list_inner.dart';
class jobs_list extends StatefulWidget {
  @override
  _jobs_listState createState() => _jobs_listState();
}

class _jobs_listState extends State<jobs_list> {
  final input_controller_search=TextEditingController();
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.0), // here the desired height
        child: Container(
          decoration: BoxDecoration(
            color: HexColor("FAA51A"),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30)),
          ),
          child: Column(
            children: [
              AppBar(
                elevation: 0,
                titleSpacing: 0.0,
                actions: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (BuildContext)=>filter()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 10, top: 12, bottom: 12),
                      height: 34,
                      width: 34,
                      child: Center(
                        child: Icon(
                          Icons.settings_input_composite,
                          color: Colors.black54,
                          size: 18,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: HexColor("EEEEEE"),
                          borderRadius:
                          BorderRadius.all(Radius.circular(34))),
                    ),
                  ),
                ],
                leading: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.keyboard_backspace,
                      color: Colors.black,
                    )),
                backgroundColor: HexColor("FAA51A"),
                title: Text(
                  "JOBS",
                  style: TextStyle(color: Colors.black,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w400, // light
                      fontStyle: FontStyle.normal,
                      fontSize: 16


                  ),
                ),
                // bottom:
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 9, right: 9, top: 0),
                        height: 48,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadius.all(Radius.circular(25)),
                            border: Border.all(
                                color: HexColor("C6C6C6"), width: 0.3)),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: TextField(
                                  controller: input_controller_search,
                                  decoration: new InputDecoration.collapsed(
                                      hintStyle: TextStyle(
                                          fontSize: 12,
                                          letterSpacing: 0.5,
                                          fontWeight: FontWeight.w400, // light
                                          fontStyle: FontStyle.normal,
                                          color: HexColor("545353")

                                      ),
                                      hintText: 'Search Jobs'),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 0, top: 0),
                              height: 48,
                              width: 48,
                              child: Center(
                                child: Icon(
                                  Icons.search,
                                  color: Colors.black54,
                                  size: 18,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: HexColor("EEEEEE"),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(24))),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(

        child: Column(
        children: [

          SizedBox(
            height: 12,
          ),
          Container(
            margin: EdgeInsets.only(left: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(width: 10,),
                Container(
                  height: 30,
                  width: 130,
                  decoration: BoxDecoration(
                      border: Border.all(color: HexColor("B5B5B5"), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  padding: EdgeInsets.all(4.0),
                  child: DropdownButton(
                      iconSize: 14,
                      underline: SizedBox(),
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            "Filter by Category",

                            style: TextStyle(

                                fontSize: 13, color: HexColor("5E5E5E")),
                          ),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Second",
                            style: TextStyle(
                                fontSize: 13, color: HexColor("5E5E5E")),
                          ),
                          value: 2,
                        ),
                        DropdownMenuItem(
                            child: Text(
                              "Third ",
                              style: TextStyle(
                                  fontSize: 13, color: HexColor("5E5E5E")),
                            ),
                            value: 3),
                        DropdownMenuItem(
                            child: Text(
                              "Fourth",
                              style: TextStyle(
                                  fontSize: 13, color: HexColor("5E5E5E")),
                            ),
                            value: 4)
                      ],
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                      border: Border.all(color: HexColor("B5B5B5"), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  padding: EdgeInsets.all(4.0),
                  child: DropdownButton(
                      iconSize: 14,
                      underline: SizedBox(),
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            "Filter by Date",
                            style: TextStyle(
                                fontSize: 13, color: HexColor("5E5E5E")),
                          ),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Second",
                            style: TextStyle(
                                fontSize: 13, color: HexColor("5E5E5E")),
                          ),
                          value: 2,
                        ),
                        DropdownMenuItem(
                            child: Text(
                              "Third",
                              style: TextStyle(
                                  fontSize: 13, color: HexColor("5E5E5E")),
                            ),
                            value: 3),
                        DropdownMenuItem(
                            child: Text(
                              "Fourth",
                              style: TextStyle(
                                  fontSize: 13, color: HexColor("5E5E5E")),
                            ),
                            value: 4)
                      ],
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                ),
                SizedBox(width: 4,),



              ],
            ),
          ),

          new Expanded(
              child: new ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext ctxt, int Index) {
                    return GestureDetector(
                      onTap: () {
                       // Navigator.push(context,MaterialPageRoute(builder: (BuildContext)=>rest_in()));
                      },
                      child: new Container(
                        margin: EdgeInsets.only(left: 0, right: 0, top: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 19,top: 19,bottom: 0),
                                  child: Text("Accounts",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1,
                                        fontSize: 15,
                                        color: HexColor("333333"),
                                      )),
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: (){
//                                Navigator.push(context,MaterialPageRoute(builder: (context)=>job_list_inner()));

                                Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 22,show_appbar: false,)));


                              },
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.all(19),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          "assets/jobs_img.png",
                                          height: 88,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      child: Container(
                                        height: 88,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          children: [
                                            Text("Consultancy Name",style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 1,
                                                fontSize: 15,
                                                color: HexColor("1A1A1A")),),
                                            SizedBox(height: 3,),
                                            Text("Lorem discription",style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 1,
                                                fontSize: 11,
                                                color: HexColor("A5A5A5"))),
                                            SizedBox(height: 3,),
                                            Row(children: [Text("Location",style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 1,


                                                fontSize: 11,color: HexColor("A5A5A5"))),

                                              SizedBox(width: 8,),

                                             ],),

                                            SizedBox(height: 3,),
                                            Row(children: [



                                              Text("Posted on - 20/12/2020",style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 1,
                                                  fontSize: 12,color: HexColor("A5A5A5")))],),

                                          ],
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(0),
                                          border: Border.all(
                                              color: HexColor("D7D7D7"),
                                              width: 0.4)),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.phone,size: 17,color: HexColor("DADADA")),
                                          Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text("CALL NOW",style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 1,
                                                  fontSize: 12,

                                                  color: HexColor("000000"))))
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    child: GestureDetector(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>enquery_page()));
                                      },
                                      child: Container(
                                        height: 45,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(0),
                                            border: Border.all(
                                                color: HexColor("C2C2C2"),
                                                width: 0.4)),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.send,size: 17,color: HexColor("DADADA"),),
                                            Padding(
                                                padding: EdgeInsets.only(left: 4),
                                                child: Text("Send Enquiry".toUpperCase(),style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: 1,
                                                    fontSize: 12,


                                                    color: HexColor("000000")),))
                                          ],
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                            Divider(height: 3,thickness: 3,color: Colors.grey[300],),


                          ],
                        ),
                      ),
                    );
                  })),



        ],
      ),
    ),);
  }
}
