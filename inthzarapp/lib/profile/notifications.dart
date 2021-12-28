import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/models/notification_model.dart';


class notifications extends StatefulWidget {
  @override
  _notificationsState createState() => _notificationsState();
}

class _notificationsState extends State<notifications> {






  List<notification_model> kk;
  void add() {
    kk.add(new notification_model(
        "Notification head", "Notification Description", "ll:00 AM"));
    kk.add(new notification_model(
        "Notification head", "Notification Description", "ll:00 AM"));
    kk.add(new notification_model(
        "Notification head", "Notification Description", "ll:00 AM"));
    kk.add(new notification_model(
        "Notification head", "Notification Description", "ll:00 AM"));
    kk.add(new notification_model(
        "Notification head", "Notification Description", "ll:00 AM"));
    kk.add(new notification_model(
        "Notification head", "Notification Description", "ll:00 AM"));
    kk.add(new notification_model(
        "Notification head", "Notification Description", "ll:00 AM"));
    kk.add(new notification_model(
        "Notification head", "Notification Description", "ll:00 AM"));
    kk.add(new notification_model(
        "Notification head", "Notification Description", "ll:00 AM"));
    kk.add(new notification_model(
        "Notification head", "Notification Description", "ll:00 AM"));
    kk.add(new notification_model(
        "Notification head", "Notification Description", "ll:00 AM"));
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




      appBar: AppBar(leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.keyboard_backspace,color: Colors.black,)),backgroundColor: Colors.white,title: Text("NOTIFICATIONS",
        style: TextStyle(color: Colors.black,

            fontSize: 16,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400, // light
            fontStyle: FontStyle.normal,
            letterSpacing: 1


        ),),),
      body: Container(
        margin: EdgeInsets.only(bottom: 80),
        child: Column(
          children: [
            new Expanded(
                child: new ListView.builder(
                    itemCount: kk.length,
                    itemBuilder: (BuildContext ctxt, int Index) {
                      return GestureDetector(
                        onTap: (){
                     //     Navigator.push(context,MaterialPageRoute(builder: (BuildContext)=>transactions()));
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
                                          letterSpacing: .5),
                                    )),
                                    Text(kk[Index].time,style: TextStyle(
                                        color: HexColor("4B4B4B"),
                                        fontSize: 14,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400, // light
                                        fontStyle: FontStyle.normal,
                                        letterSpacing: 1))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20,bottom: 18),
                                child: Row(
                                  children: [
                                    Text(kk[Index].notification_dec, style: TextStyle(
                                      color: HexColor("4B4B4B"),
                                      fontSize: 13,

                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400, // light
                                        fontStyle: FontStyle.normal,
                                        letterSpacing: .5)
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
