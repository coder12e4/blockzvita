import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/dashbord/navigation_drover/add_bussiness/thankyou.dart';
class enquery_page extends StatefulWidget {
  @override
  _enquery_pageState createState() => _enquery_pageState();
}

class _enquery_pageState extends State<enquery_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.keyboard_backspace,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Enquire now".toUpperCase(),
          style: TextStyle(color: Colors.black,
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400, // light
              fontStyle: FontStyle.normal,
              letterSpacing: 1

          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 28,right: 20,top: 20),
              child:     Text(
              "Fill this enquiry for job service to business name and location",
              textAlign: TextAlign.justify,
              style: TextStyle( height: 1.9,letterSpacing: .1,fontWeight: FontWeight.w400,fontSize: 12, color: HexColor("2D2D2D")),
            )
              ,),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 41, left: 31, right: 31),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name* ",

                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400, // light
                        fontStyle: FontStyle.normal,
                        letterSpacing: 1,
                      color: HexColor("595959")



                    ),
                  ),
                  TextField(
                    decoration: new InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 0),
                        alignLabelWithHint: true,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: new UnderlineInputBorder(
                          borderRadius: new BorderRadius.circular(8.0),
                          borderSide: new BorderSide(
                            width: 2,
                            color: HexColor("E4E4E4"),
                          ),
                        ),
                        focusedBorder: new UnderlineInputBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                            borderSide: new BorderSide(
                              color: HexColor("E4E4E4"),
                            ))),
                    style: new TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Text(" Mobile*",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400, // light
                      fontStyle: FontStyle.normal,
                      letterSpacing: 1,
                      color: HexColor("595959")
                  ),),
                  TextField(
                    decoration: new InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 0),
                        alignLabelWithHint: true,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: new UnderlineInputBorder(
                          borderRadius: new BorderRadius.circular(8.0),
                          borderSide: new BorderSide(
                            color: HexColor("E4E4E4"),
                          ),
                        ),
                        focusedBorder: new UnderlineInputBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                            borderSide: new BorderSide(
                              color: HexColor("E4E4E4"),
                            ))),
                    style: new TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Text("Email*",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400, // light
                      fontStyle: FontStyle.normal,
                      letterSpacing: 1,
                      color: HexColor("595959")
                  ),),
                  TextField(
                    decoration: new InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 0),
                        alignLabelWithHint: true,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: new UnderlineInputBorder(
                          borderRadius: new BorderRadius.circular(8.0),
                          borderSide: new BorderSide(
                            color: HexColor("E4E4E4"),
                          ),
                        ),
                        focusedBorder: new UnderlineInputBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                            borderSide: new BorderSide(
                              color: HexColor("E4E4E4"),
                            ))),
                    style: new TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            Container(
              margin: EdgeInsets.only(left: 0, right: 0, top: 0),
              child: ButtonTheme(
                minWidth: double.infinity,
                height: 53,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> thankyou()));
                  },
                  color: HexColor("966636"),
                  textColor: Colors.white,
                  child: Text("SUBMIT".toUpperCase(),
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
