import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/models/notification_model.dart';

import 'invoice.dart';




class transactions extends StatefulWidget {
  @override
  _transactionsState createState() => _transactionsState();
}

class _transactionsState extends State<transactions> {
  List<notification_model> kk;
  void add() {
    kk.add(new notification_model("#1234567890", "Gold", "l5-10-2020"));
    kk.add(new notification_model("#23232567890", "Silver", "l4-10-2020"));
    kk.add(new notification_model("#7443467890", "Platinum", "l6-10-2020"));
    kk.add(new notification_model("#6786567890", "Iron", "l8-10-2020"));
    kk.add(new notification_model("#3456567890", "Gold", "l9-10-2020"));
    kk.add(new notification_model("#5665567890", "Platinum", "20-10-2020"));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    kk = new List<notification_model>();
    add();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset:false,

      extendBody: true,


      appBar: AppBar(
      titleSpacing: 0.0,
      leading: GestureDetector(

          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.keyboard_backspace,color: Colors.black,)),backgroundColor: Colors.white,title: Text("TRANSACTIONS",style: TextStyle(color: Colors.black,
          fontSize: 16,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400, // light
          fontStyle: FontStyle.normal,
          letterSpacing: 1


      ),),),


      body: Container(

        margin: EdgeInsets.only(bottom: 70),
        child: Column(
          children: [
            new Expanded(
                child: new ListView.builder(
                    itemCount: kk.length,
                    itemBuilder: (BuildContext ctxt, int Index) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext) =>invoice()));
                        },
                        child: new Container(
                          margin: EdgeInsets.only(left: 14, right: 14, top: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: HexColor("4B4B4B"), width: 0.4)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 14,right: 20,bottom: 9,left: 20),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                      kk[Index].notification_head,
                                      style: TextStyle(
                                        color: HexColor("4B4B4B"),
                                          fontSize: 14,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400, // light
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: 0.5


                                      ),
                                    )),
                                    Text(
                                        kk[Index].time,

                                        style: TextStyle(
                                        color: HexColor("242424"),
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400, // light
                                        fontStyle: FontStyle.normal,
                                        letterSpacing: 0.5
                                    )




                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,bottom: 8),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(kk[Index].notification_dec, style: TextStyle(
                                        color: HexColor("4B4B4B"),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 20),
                                      child: Text('\u{20B9}'+" 800 /-", style: TextStyle(
                                          color: HexColor("000000"),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),),
                                    )

                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,bottom: 18),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text("Completed", style: TextStyle(
                                          color: HexColor("4DA509"),
                                          fontSize: 14,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400, // light
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: 0.5
                                      ),),
                                    ),


                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
