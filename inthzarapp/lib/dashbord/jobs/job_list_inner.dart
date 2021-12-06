import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'dart:math' as math;

import 'package:inthzarapp/constants/HexColor.dart';

import 'enquiry_page.dart';
class job_list_inner extends StatefulWidget {
  @override
  _job_list_innerState createState() => _job_list_innerState();
}

class DropDown extends StatelessWidget {
  final double itemHeight;
  bool visibles = true;
  double ops;
  //String viscolor;
  DropDown({Key key, this.itemHeight,this.visibles,this.ops}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 350,
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment(0.20, 0),
            child: ClipPath(
              clipper: ArrowClipper(),
              child: Container(
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ),
          ),
          Visibility(
            visible: visibles,
            child: Material(
              elevation: 5,
              shape: ArrowShape(),
              child: Container(
                height: 78,
                width: 200,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(8),

                ),
                child: Column(
                  children: <Widget>[
                    Container(
                        width: 500,
                        decoration: BoxDecoration(

                        ),
                        child:
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  Image.asset("assets/imagw.png",height: 15,),
                                  SizedBox(width: 5,),
                                  Text("Whatsapp",style: TextStyle(fontSize: 10),),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  Image.asset("assets/imagf.png",height: 15,),
                                  SizedBox(width: 5,),
                                  Text("Facebook",style: TextStyle(fontSize: 10),),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  Image.asset("assets/imagi.png",height: 15,),
                                  SizedBox(width: 5,),
                                  Text("Instagram",style: TextStyle(fontSize: 10),),
                                ],
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class DropDownItem extends StatelessWidget {
  final String text;
  final IconData iconData;
  final bool isSelected;
  final bool isFirstItem;
  final bool isLastItem;

  const DropDownItem({Key key, this.text, this.iconData, this.isSelected = false, this.isFirstItem = false, this.isLastItem = false})
      : super(key: key);

  factory DropDownItem.first({String text, IconData iconData, bool isSelected}) {
    return DropDownItem(
      text: text,
      iconData: iconData,
      isSelected: isSelected,
      isFirstItem: true,
    );
  }

  factory DropDownItem.last({String text, IconData iconData, bool isSelected}) {
    return DropDownItem(
      text: text,
      iconData: iconData,
      isSelected: isSelected,
      isLastItem: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.vertical(
          top: isFirstItem ? Radius.circular(8) : Radius.zero,
          bottom: isLastItem ? Radius.circular(8) : Radius.zero,
        ),
        color: isSelected ? Colors.black : Colors.black,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: <Widget>[
          Text(
            text.toUpperCase(),
            style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.w600),
          ),
          Spacer(),
          Icon(
            iconData,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class ArrowClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, size.height);
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class ArrowShape extends ShapeBorder {
  @override
  // TODO: implement dimensions
  EdgeInsetsGeometry get dimensions => throw UnimplementedError();

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    // TODO: implement getInnerPath
    throw UnimplementedError();
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    // TODO: implement getOuterPath
    return getClip(rect.size);
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {
    // TODO: implement paint
  }

  @override
  ShapeBorder scale(double t) {
    // TODO: implement scale
    throw UnimplementedError();
  }

  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, size.height);
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);

    return path;
  }
}




class _job_list_innerState extends State<job_list_inner> {


  bool visiblevalue = true;
  double valueop = 1.0;
  final _currentPageNotifier = ValueNotifier<int>(0);
  final key = new GlobalKey<_job_list_innerState>();

  GlobalKey actionKey;
  double height, width, xPosition, yPosition;
  bool isDropdownOpened = false;
  OverlayEntry floatingDropdown;
  OverlayEntry floatingnullDropdown;

  void findDropdownData() {
    RenderBox renderBox = key.currentContext.findRenderObject();
    height = renderBox.size.height;
    width = renderBox.size.width;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    xPosition = offset.dx;
    yPosition = offset.dy;
    print(height);
    print(width);
    print(xPosition);
    print(yPosition);
  }

  OverlayEntry _createFloatingDropdown() {
    return OverlayEntry(
        builder: (context) {
          return Positioned(
            left: 90,
            top: yPosition + height,
            child: Container(
              width: 250,
              child: Opacity(
                opacity: valueop,
                child: DropDown(
                  itemHeight: 10,
                  visibles: visiblevalue,
                ),
              ),
            ),
          );
        });
  }

  OverlayEntry _createFloatingnullDropdown() {
    return OverlayEntry(
        builder: (context) {
          return Positioned(
            left: xPosition,
            width: width,
            top: yPosition + height,
            height: 100,
            child: Opacity(
              opacity: 0.0,
              child: DropDown(
                itemHeight: 10,
                visibles: visiblevalue,
              ),
            ),
          );
        });
  }


  bool _visible;
  @override
  void initState() {
    _visible = true;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(400),
        child: Container(
          height: 380,
          child: Stack(
            children: [
              SingleChildScrollView(

                child: Container(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.pink,
                        height: 300,
                        width: double.infinity,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 225,
                      child: Image.asset("assets/jobs_img.png",fit: BoxFit.fill,),
                    ),

                    Positioned(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.keyboard_backspace,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      top: 30,
                      left: 15,
                    ),
                    // Positioned(
                    //   child: Icon(
                    //     Icons.favorite_border,
                    //     color: Colors.white,
                    //     size: 28,
                    //   ),
                    //   top: 30,
                    //   right: 15,
                    // ),
                  ],
                ),
              ),
              Positioned(
                top: 170,
                left: 0.0,
                right: 0.0,
                child: Container(
                  height: 250,
                  padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Job Tittle".toUpperCase(),
                        style: TextStyle(
                            fontSize: 19,
                            color: HexColor("272727"),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1
                        ),

                      ),
                      SizedBox(
                        height: 6,
                      ),

                      Text(
                        "Company Name ".toUpperCase(),
                        style: TextStyle(
                            fontSize: 14,
                            color: HexColor("272727"),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1
                        ),

                      ),
                      SizedBox(
                        height: 6,
                      ),



                      Text(
                        "Red cross road, Kozhikod - 05 KM",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.1,
                            fontSize: 13, color: HexColor("585757")),

                      ),

                      SizedBox(
                        height: 6,
                      ),
Row(children: [

  Text(
    "Salary Range -",
    style: TextStyle(
        fontWeight: FontWeight.w400,
        letterSpacing: 0.1,
        fontSize: 13, color: HexColor("585757")),

  ),
  Text(
    " \u20B9 10000 - \u20B9 25000 ",
    style: TextStyle(
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        fontSize: 13, color: HexColor("585757")),

  ),


],),
                      SizedBox(
                        height: 6,
                      ),

                      Text(
                        "Posted on - 20/12/2020",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.1,
                            fontSize: 13, color: HexColor("585757")),

                      ),
                      SizedBox(
                        height: 26,
                      ),

                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 40,
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: HexColor("966636"))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    size: 18,
                                    color: HexColor("DADADA"),
                                  ),
                                  Text(
                                    "CALL NOW",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: HexColor("000000")),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: GestureDetector(
                              key: key,
                              onTap: (){
                                print("hlo");
                                setState(() {
                                  if (isDropdownOpened) {
                                    floatingDropdown.remove();
                                  } else {
                                    findDropdownData();
                                    floatingDropdown = _createFloatingDropdown();
                                    Overlay.of(context).insert(floatingDropdown);
                                  }

                                  isDropdownOpened = !isDropdownOpened;
                                });

                              },
                              child: Container(
                                height: 40,
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: HexColor("966636"))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [

                                    Transform(
                                      alignment: Alignment.center,
                                      transform: Matrix4.rotationY(math.pi),
                                      child: Icon(Icons.reply, size: 24,color: HexColor("DADADA")),
                                    ),



                                    Text(
                                      "Share".toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: HexColor("000000")),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>enquery_page()));
                              },
                              child: Container(
                                height: 40,
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: HexColor("966636"))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    Icon(
                                      Icons.send,
                                      size: 18,
                                      color: HexColor("DADADA"),
                                    ),



                                    Text(
                                      "Enquiry".toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: HexColor("000000")),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),


                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20))),
                ),
              ),
            ],
          ),
        ),
      ),


   body: NotificationListener(
     onNotification: (t){
      if(t is ScrollEndNotification) {
        setState(() {
          if (isDropdownOpened) {
            floatingDropdown.remove();
          } else {
            findDropdownData();
            floatingDropdown = _createFloatingnullDropdown();

            Overlay.of(context).insert(floatingDropdown);
          }
          isDropdownOpened = !isDropdownOpened;
        });
      }
        },
     child: SingleChildScrollView(
      child:   Container(
      color: HexColor("ffffff"),
      child: Column(
        children: [
          new Container(
            margin: EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About the job ".toUpperCase(),
                  style: TextStyle(letterSpacing: 1, fontWeight: FontWeight.w400,fontSize: 16, color: HexColor("333333")),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  textAlign: TextAlign.justify,
                  style: TextStyle( height: 1.9,letterSpacing: .1,fontWeight: FontWeight.w400,fontSize: 12, color: HexColor("7A7A7A")),
                )
              ],
            ),
          ),
          SizedBox(height: 16,),
          new Container(
            margin: EdgeInsets.only(left: 16, top: 8),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.pin_drop,
                  color: HexColor("DADADA"),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Address",
                          style: TextStyle(
                              fontSize: 14, color: HexColor("000000")),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Text(
                            'Lorem bjkkbhjfeff efrefef bjhbbj and typesetting  industry.Lorem Ipsum',
                            style: TextStyle(
                              height: 1.8,
                                fontSize: 12,
                                color: HexColor("484848")),
                            textAlign: TextAlign.justify,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        ),

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),

          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "RELATED JOBS",
                style: TextStyle(color: HexColor("333333"), fontSize: 16,letterSpacing: 1),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 180,
            margin: EdgeInsets.only(left: 16),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) => Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              "assets/jobs_img.png",
                              height: 88,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 60,
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Job Name",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: HexColor("1A1A1A")),
                              ),
                              Row(
                                children: [
                                  Text("Location",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: HexColor("A5A5A5"))),
                                  Text("05 KM",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: HexColor("444444")))
                                ],
                              ),
                              Row(
                                children: [
                                  Text("5",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: HexColor("A5A5A5"))),
                                  RatingBar.builder(
                                    initialRating: 3,
                                    itemSize: 11,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding: EdgeInsets.symmetric(
                                        horizontal: 2.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("20 ratings",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: HexColor("444444")))
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 70,)

        ],
      ),
  ),
),
   ),


    );
  }
}
