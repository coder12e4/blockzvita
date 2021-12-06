import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'dart:math' as math;

import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/dashbord/restorents/view_all.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:simple_tooltip/simple_tooltip.dart';


class my_bussiness_edit extends StatefulWidget {
  my_bussiness_edit({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _my_bussiness_editState createState() => _my_bussiness_editState();
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
            alignment: Alignment(0.70, 0),
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

class _my_bussiness_editState extends State<my_bussiness_edit> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  bool visiblevalue = true;
  double valueop = 1.0;
  final _currentPageNotifier = ValueNotifier<int>(0);
  final key = new GlobalKey<_my_bussiness_editState>();

  GlobalKey actionKey;
  double height, width, xPosition, yPosition;
  bool isDropdownOpened = false;
  OverlayEntry floatingDropdown;
  OverlayEntry floatingnullDropdown;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
  //        key: key,
/*
          appBar: PreferredSize(

            preferredSize: Size.fromHeight(800),
            child: Container(
              height: 440,
              child: Stack(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          color: Colors.pink,
                          height: 400,
                          width: double.infinity,
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200,
                          child: PageView(
                            controller: _controller,
                            onPageChanged: (int index) {
                              _currentPageNotifier.value = index;
                            },
                            children: [
                              Image.asset(
                                "assets/rect.png",
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/rect.png",
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                "assets/rect.png",
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 0.0,
                          right: 0.0,
                          top: 160,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CirclePageIndicator(
                              selectedDotColor: Colors.white,
                              itemCount: 3,
                              currentPageNotifier: _currentPageNotifier,
                            ),
                          ),
                        ),
                        Positioned(
                          child: Icon(
                            Icons.keyboard_backspace_sharp,
                            color: Colors.white,
                            size: 28,
                          ),
                          top: 30,
                          left: 15,
                        ),
                        Positioned(
                          child: Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                            size: 28,
                          ),
                          top: 30,
                          right: 15,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 185,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      height: 260,
                      padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "RESTAURANT NAME",
                            style: TextStyle(
                                fontSize: 19,
                                color: HexColor("272727"),
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.1
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
                                fontSize: 11, color: HexColor("585757")),

                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    color: HexColor("FAA51A"),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Center(
                                  child: Text(
                                    "5",
                                    style: TextStyle(fontSize: 11,    fontWeight: FontWeight.w500,
                                        letterSpacing: 0.1
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "Rating",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.3,
                                    fontSize: 11, color: HexColor("383838")),
                              ),
                              Text(
                                "(101 Review)",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.3,
                                    fontSize: 11, color: HexColor("6B6B6B")),
                              ),
                              Expanded(child: SizedBox()),
                              Text(
                                "OPEN NOW",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.3,
                                    fontSize: 11, color: HexColor("27CB0D")),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
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
                                        Icons.phone_outlined,
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
                                        Icons.location_on_outlined,
                                        size: 18,
                                        color: HexColor("DADADA"),
                                      ),
                                      Text(
                                        "DIRECTION",
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
                                        child: Icon(
                                          Icons.reply,
                                          size: 18,
                                          color: HexColor("DADADA"),
                                        ),
                                      ),


                                      Text(
                                        "SHARE",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: HexColor("000000")),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("assets/imagw.png"),
                              SizedBox(
                                width: 20,
                              ),
                              Image.asset("assets/imagf.png"),
                              SizedBox(
                                width: 20,
                              ),
                              Image.asset("assets/imagi.png"),
                              SizedBox(
                                width: 20,
                              ),
                              Image.asset("assets/imagl.png"),
                              SizedBox(
                                width: 20,
                              )
                            ],
                          ),
                          TabBar(
                            isScrollable: true,
                            labelColor: HexColor("272727"),
                            indicatorColor: HexColor("FAA51A"),
                            tabs: [
                              Tab(
                                text: "Photos",
                              ),
                              Tab(
                                text: "Videos",
                              ),
                            ],
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
 */

          body: SingleChildScrollView(
            child: Container(
              child: Column(children: [
                Container(width: double.infinity,
                  height: 300,child: Container(
                  height: 290,
                  child: Stack(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              color: Colors.pink,
                              height: 260,
                              width: double.infinity,
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 200,
                              child: PageView(
                                controller: _controller,
                                onPageChanged: (int index) {
                                  _currentPageNotifier.value = index;
                                },
                                children: [
                                  Image.asset(
                                    "assets/rect.png",
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                  Image.asset(
                                    "assets/rect.png",
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                  Image.asset(
                                    "assets/rect.png",
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              left: 0.0,
                              right: 0.0,
                              top: 160,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CirclePageIndicator(
                                  selectedDotColor: Colors.white,
                                  dotColor: Colors.grey,
                                  itemCount: 3,
                                  currentPageNotifier: _currentPageNotifier,
                                ),
                              ),
                            ),
                            Positioned(
                              child: Icon(
                                Icons.keyboard_backspace,
                                color: Colors.white,
                                size: 28,
                              ),
                              top: 30,
                              left: 15,
                            ),
                            Positioned(
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                                size: 28,
                              ),
                              top: 30,
                              right: 15,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 185,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          height: 115,
                          padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             Row(children: [
                               Text(
                                 "RESTAURANT NAME",
                                 style: TextStyle(
                                     fontSize: 19,
                                     color: HexColor("272727"),
                                     fontWeight: FontWeight.w500,
                                     letterSpacing: 0.1
                                 ),

                               ),Expanded(child: SizedBox(height: 8,)),
                               Icon(Icons.create_outlined,color: HexColor("DADADA"),)

                             ],),

                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Red cross road, Kozhikod - 05 KM",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.1,
                                    fontSize: 11, color: HexColor("585757")),

                              ),
                             Row(children: [

                               TabBar(
                                 isScrollable: true,
                                 labelColor: HexColor("272727"),
                                 indicatorColor: HexColor("FAA51A"),
                                 tabs: [
                                   Tab(
                                     text: "Photos",
                                   ),
                                   Tab(
                                     text: "Videos",
                                   ),
                                 ],
                               ),
                               Expanded(child: SizedBox(height: 8,)),
                               Icon(Icons.create_outlined,color: HexColor("DADADA"),)



                             ],)
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
                ),),


                Container(height: 1950,width: double.infinity,child: TabBarView(
                  children: [
                    tab1(),
                    tab2()
                  ],
                ),)


              ],),
            ),
          ),





/*
          body: Container(
            color: Colors.white,
            child: DefaultTabController(

              length: 2,
              child: NestedScrollView(
                headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      elevation: 0,
                      collapsedHeight: 59,
                      backgroundColor: Colors.transparent,
                      title: Text("RESTOURENT NAME".toUpperCase(),style: TextStyle(fontSize: 16,color: Colors.transparent,fontWeight: FontWeight.w400,letterSpacing: 1)),
                      expandedHeight: 360.0,
                      floating: false,
                      pinned: true,

                      flexibleSpace: FlexibleSpaceBar(
                          centerTitle: true,
                          background:  Container(
                            height: 600,
                            child: Stack(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        color: Colors.pink,
                                        height: 500,
                                        width: double.infinity,
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: 200,
                                        child: PageView(
                                          controller: _controller,
                                          onPageChanged: (int index) {
                                            _currentPageNotifier.value = index;
                                          },
                                          children: [
                                            Image.asset(
                                              "assets/rect.png",
                                              height: 200,
                                              fit: BoxFit.cover,
                                            ),
                                            Image.asset(
                                              "assets/rect.png",
                                              height: 200,
                                              fit: BoxFit.cover,
                                            ),
                                            Image.asset(
                                              "assets/rect.png",
                                              height: 200,
                                              fit: BoxFit.cover,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        left: 0.0,
                                        right: 0.0,
                                        top: 160,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: CirclePageIndicator(
                                            selectedDotColor: Colors.white,
                                            itemCount: 3,
                                            currentPageNotifier: _currentPageNotifier,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        child: GestureDetector(
                                          onTap: (){
                                            Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 12,show_appbar: false,)));
                                          },
                                          child: Icon(
                                            Icons.keyboard_backspace_sharp,
                                            color: Colors.white,
                                            size: 28,
                                          ),
                                        ),
                                        top: 30,
                                        left: 15,
                                      ),
                                      Positioned(
                                        child: Icon(
                                          Icons.favorite_border_outlined,
                                          color: Colors.white,
                                          size: 28,
                                        ),
                                        top: 30,
                                        right: 15,
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 185,
                                  left: 0.0,
                                  right: 0.0,
                                  child: Container(
                                    height: 260,
                                    padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "RESTAURANT NAME",
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: HexColor("272727"),
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.1
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
                                              fontSize: 11, color: HexColor("585757")),

                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                  color: HexColor("FAA51A"),
                                                  borderRadius:
                                                  BorderRadius.all(Radius.circular(20))),
                                              child: Center(
                                                child: Text(
                                                  "5",
                                                  style: TextStyle(fontSize: 11,    fontWeight: FontWeight.w500,
                                                      letterSpacing: 0.1
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              "Rating",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 0.3,
                                                  fontSize: 11, color: HexColor("383838")),
                                            ),
                                            Text(
                                              "(101 Review)",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 0.3,
                                                  fontSize: 11, color: HexColor("6B6B6B")),
                                            ),
                                            Expanded(child: SizedBox()),
                                            Text(
                                              "OPEN NOW",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 0.3,
                                                  fontSize: 11, color: HexColor("27CB0D")),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
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
                                                      Icons.phone_outlined,
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
                                                      Icons.location_on_outlined,
                                                      size: 18,
                                                      color: HexColor("DADADA"),
                                                    ),
                                                    Text(
                                                      "DIRECTION",
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
                                                      child: Icon(
                                                        Icons.reply,
                                                        size: 18,
                                                        color: HexColor("DADADA"),
                                                      ),
                                                    ),



                                                    Text(
                                                      "SHARE",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: HexColor("000000")),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 18,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Image.asset("assets/imagw.png"),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Image.asset("assets/imagf.png"),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Image.asset("assets/imagi.png"),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Image.asset("assets/imagl.png"),
                                            SizedBox(
                                              width: 20,
                                            )
                                          ],
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
                    ),

                    new SliverPadding(
                      padding: new EdgeInsets.all(16.0),
                      sliver: new SliverList(
                        delegate: new SliverChildListDelegate([
                          TabBar(
                            isScrollable: true,
                            labelColor: HexColor("272727"),
                            indicatorColor: HexColor("FAA51A"),
                            tabs: [
                              Tab(
                                text: "Photos",
                              ),
                              Tab(
                                text: "Videos",
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),


                  ];
                },
                body:TabBarView(
                  children: [
                    tab1(),
                    tab2()
                  ],
                )
              ),
            ),
          ),
*/

        ),
      ),
    );
  }
}

class tab1 extends StatefulWidget {
  @override
  _tab1State createState() => _tab1State();
}

class _tab1State extends State<tab1> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Container(
                  margin: EdgeInsets.only(left: 16, top: 8),
                  height: 120.0,
                  child: new ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context,index){
                      return  GestureDetector(
                        onTap: () async {
                          await showDialog(
                              context: context,
                              builder: (_) => ImageDialog()
                          );
                        },

                        child: Container(
                            margin: EdgeInsets.all(4),
                            child: ClipRRect(
                              child: Image.asset("assets/rect.png"),
                              borderRadius: BorderRadius.circular(8.0),
                            )),
                      );

                    },

                  )),
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
                          Row(children: [  Text(
                            "Address",
                            style: TextStyle(


                                fontSize: 14,
                                color: HexColor("000000"),
                                fontWeight: FontWeight.w400


                            ),
                          ),
                          
                          Expanded(child: SizedBox(height: 8,)),
                          Icon(Icons.create_outlined,color: HexColor("DADADA"),) ,
                          SizedBox(width: 20,)
                          ],),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Text(
                                'Lorem bjkkbhjfeff efrefef bjhbbj and typesetting  industry.Lorem Ipsum',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,

                                    fontSize: 12, color: HexColor("484848")),
                                textAlign: TextAlign.justify,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(right: 18, top: 12),
                                child: Divider(
                                  thickness: 1,
                                  color: HexColor("CECECE"),
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              new Container(
                margin: EdgeInsets.only(left: 16, top: 8),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.local_phone_outlined,color: HexColor("DADADA")),
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
                           Row(children: [


                             Text(
                               " Call Now",
                               style: TextStyle( fontWeight: FontWeight.w400,
                                   fontSize: 14, color: HexColor("000000")),
                             ),Expanded(
                               child: SizedBox(height: 8,),
                             ),
                             Icon(Icons.create_outlined,color: HexColor("DADADA"),),
                             SizedBox(width: 20,)

                           ],),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Text(
                                '+91 9877662312',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12, color: HexColor("484848")),
                                textAlign: TextAlign.justify,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(right: 18, top: 12),
                                child: Divider(
                                  thickness: 1,
                                  color: HexColor("CECECE"),
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              new Container(
                margin: EdgeInsets.only(left: 16, top: 8),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.speaker_notes,
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
                            Row(
                              children: [

                                Text(
                                  "Mail Address",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14, color: HexColor("000000")),
                                ),Expanded(
                                  child: SizedBox(height: 8,),
                                ),
                                Icon(Icons.create_outlined,color: HexColor("DADADA"),)

                                ,SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Text(
                                'info@Compny.com',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12, color: HexColor("484848")),
                                textAlign: TextAlign.justify,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(right: 18, top: 12),
                                child: Divider(
                                  thickness: 1,
                                  color: HexColor("CECECE"),
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              new Container(
                margin: EdgeInsets.only(left: 16, top: 8),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.query_builder,
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
                            Row(
                              children: [

                                Text(
                                  "Open time",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14, color: HexColor("000000")),
                                ),


                              ],

                            ),

                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Text(
                                ' 09:00 AM - 08:00 PM ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12, color: HexColor("484848")),
                                textAlign: TextAlign.justify,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(right: 18, top: 12),
                                child: Divider(
                                  thickness: 1,
                                  color: HexColor("CECECE"),
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              new Container(
                margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About Hotel Name".toUpperCase(),
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
              new Container(
                margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SERVICES",
                      style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1,fontSize: 16, color: HexColor("333333")),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                            child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 18,
                              color: HexColor("484848"),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Service 1",
                              style: TextStyle(
                                  fontSize: 12, color: HexColor("484848")),
                            )
                          ],
                        )),
                        Expanded(
                            child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 18,
                              color: HexColor("484848"),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Service 1",
                              style: TextStyle(
                                  fontSize: 12, color: HexColor("484848")),
                            )
                          ],
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                            child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 18,
                              color: HexColor("484848"),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Service 1",
                              style: TextStyle(
                                  fontSize: 12, color: HexColor("484848")),
                            )
                          ],
                        )),
                        Expanded(
                            child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 18,
                              color: HexColor("484848"),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Service 1",
                              style: TextStyle(
                                  fontSize: 12, color: HexColor("484848")),
                            )
                          ],
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                            child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 18,
                              color: HexColor("484848"),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Service 1",
                              style: TextStyle(
                                  fontSize: 12, color: HexColor("484848")),
                            )
                          ],
                        )),
                        Expanded(
                            child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 18,
                              color: HexColor("484848"),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Service 1",
                              style: TextStyle(
                                  fontSize: 12, color: HexColor("484848")),
                            )
                          ],
                        )),
                      ],
                    ),
                  ],
                ),
              ),
              new Container(
                margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "REVIEWS AND RATING",
                      style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1,fontSize: 16, color: HexColor("333333")),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 59,
                          width: 59,
                          decoration: BoxDecoration(
                              color: HexColor("FAA51A"),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          child: Center(
                            child: Text(
                              "5",
                              style: TextStyle(
                                  fontSize: 19, color: HexColor("ffffff")),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: [
                            Text(
                              "5 Rating",
                              style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1,
                                  fontSize: 15, color: HexColor("383838")),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              " (101 Review) ",
                              style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1,
                                  fontSize: 11, color: HexColor("484848")),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              new Container(
                margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "User Reviews",
                      style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1,fontSize: 13, color: HexColor("333333")),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRect(
                          child: Image.asset(
                            "assets/user_rest.png",
                            height: 50,
                            width: 50,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "User Name",
                              style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1,
                                  fontSize: 15, color: HexColor("383838")),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Lorem contant of review  ",
                              style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1,
                                  fontSize: 11, color: HexColor("484848")),
                            ),
                            SizedBox(
                              height: 2,
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
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 2.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ],
                            )
                          ],
                        )
                      ],


                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRect(
                          child: Image.asset(
                            "assets/user_rest1.png",
                            height: 50,
                            width: 50,
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "User Name",
                              style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1,
                                  fontSize: 15, color: HexColor("383838")),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Lorem contant of review  ",
                              style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1,
                                  fontSize: 11, color: HexColor("484848")),
                            ),
                            SizedBox(
                              height: 2,
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
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 2.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){

                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>view_all()));
                    },
                    child: Container(
                      width: 100,
                      height: 38,
                      child: Center(
                        child: Text(
                          "View All",
                          style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1,color: HexColor("484848")),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border:
                              Border.all(width: 1, color: HexColor("D9D9D9"))),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Rate This",
                    style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1,fontSize: 13, color: HexColor("484848")),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 18,
                  ),
                  RatingBar.builder(
                    initialRating: 3,
                    itemSize: 22,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        padding: const EdgeInsets.all(0.0),
                        child: TextField(
                          decoration: new InputDecoration(
                              alignLabelWithHint: false,
                              contentPadding: EdgeInsets.symmetric(vertical: 4),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              labelText: 'Enter Your Review',
                              labelStyle: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1,
                                  fontSize: 11, color: HexColor("969696")),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: new UnderlineInputBorder(
                                borderRadius: new BorderRadius.circular(0.0),
                                borderSide: new BorderSide(
                                  color: HexColor("969696"),
                                ),
                              ),
                              focusedBorder: new UnderlineInputBorder(
                                  borderRadius: new BorderRadius.circular(0.0),
                                  borderSide: new BorderSide(
                                    color: HexColor("D1D1D1"),
                                  ))),
                          style:
                              new TextStyle(color: Colors.black, fontSize: 15),
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset("assets/user_rest1.png"),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Your Name",
                    style: TextStyle(fontSize: 12, color: HexColor("4B4848")),
                  ),
                  Expanded(child: SizedBox()),
                  Container(
                    height: 26,
                    width: 100,
                    child: Center(
                      child: Text(
                        "Publish",
                        style:
                            TextStyle(fontSize: 12, color: HexColor("ffffff")),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: HexColor("FAA51A")),
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "RELATED",
                    style: TextStyle(color: HexColor("333333"), fontSize: 16),
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
                    child: Container(
                      width: 161,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    "assets/demo_hotell.png",
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
                                      "Restaurants",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 1,
                                          color: HexColor("1A1A1A")),
                                    ),

                                    Container(width: 140,child:

                                    Row(
                                      children: [
                                        Text("Location",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 1,
                                                color: HexColor("A5A5A5"))),
                                        Expanded(child: SizedBox()),

                                        Text("05 KM",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 1,
                                                color: HexColor("444444")))
                                      ],
                                    )
                                      ,),

                                    Row(
                                      children: [
                                        Text("5",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 1,
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
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 1,
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
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "ALSO LISTED IN",
                    style: TextStyle(color: HexColor("333333"), fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 18,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border:
                            Border.all(color: HexColor("B8B8B8"), width: 1)),
                    child: Center(
                      child: Text("Restaurants"),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border:
                            Border.all(color: HexColor("B8B8B8"), width: 1)),
                    child: Center(
                      child: Text("Bakeries"),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border:
                            Border.all(color: HexColor("B8B8B8"), width: 1)),
                    child: Center(
                      child: Text("Cake Shop"),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border:
                            Border.all(color: HexColor("B8B8B8"), width: 1)),
                    child: Center(
                      child: Text("Multi"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: HexColor("7E4E00").withOpacity(.9),
                    image: DecorationImage(
                        colorFilter: new ColorFilter.mode(HexColor("7E4E00").withOpacity(.7), BlendMode.dstATop),
                        image: AssetImage(
                          "assets/rect_back.png",
                        ),
                        fit: BoxFit.fitWidth)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "SUBMIT ENQUIRY",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              padding: const EdgeInsets.all(0.0),
                              child: TextField(
                                decoration: new InputDecoration(
                                    alignLabelWithHint: false,
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 4),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    labelText: 'Your Name',
                                    labelStyle: TextStyle(
                                        fontSize: 12,
                                        color: HexColor("ffffff")),
                                    filled: true,
                                    fillColor: Colors.transparent,
                                    enabledBorder: new UnderlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(0.0),
                                      borderSide: new BorderSide(
                                        color: HexColor("ffffff"),
                                      ),
                                    ),
                                    focusedBorder: new UnderlineInputBorder(
                                        borderRadius:
                                            new BorderRadius.circular(0.0),
                                        borderSide: new BorderSide(
                                          color: HexColor("D1D1D1"),
                                        ))),
                                style: new TextStyle(
                                    color: Colors.black, fontSize: 15),
                              )),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              padding: const EdgeInsets.all(0.0),
                              child: TextField(
                                decoration: new InputDecoration(
                                    alignLabelWithHint: false,
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 4),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    labelText: 'Your Name',
                                    labelStyle: TextStyle(
                                        fontSize: 12,
                                        color: HexColor("ffffff")),
                                    filled: true,
                                    fillColor: Colors.transparent,
                                    enabledBorder: new UnderlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(0.0),
                                      borderSide: new BorderSide(
                                        color: HexColor("ffffff"),
                                      ),
                                    ),
                                    focusedBorder: new UnderlineInputBorder(
                                        borderRadius:
                                            new BorderRadius.circular(0.0),
                                        borderSide: new BorderSide(
                                          color: HexColor("D1D1D1"),
                                        ))),
                                style: new TextStyle(
                                    color: Colors.black, fontSize: 15),
                              )),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 25),

                          height: 26,
                          width: 100,
                          child: Center(
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                  fontSize: 12, color: HexColor("000000")),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: HexColor("FAA51A")),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: HexColor("DEDEDE"),
                  ))
                ],
              ),
              Container(
                child: Stack(
                  children: [
                    Container(
                      height: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Divider(
                                color: HexColor("DEDEDE"),
                              ))
                            ],
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        right: 20,
                        bottom: 4,
                        height: 30,
                        width: 30,
                        child: Container(
                          decoration: BoxDecoration(
                              color: HexColor("DADADA"),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Center(
                            child: Icon(Icons.keyboard_arrow_up),
                          ),
                        )),
                    Positioned(
                      child: Text("REPORT AN ERROR"),
                      left: 30,
                      bottom: 20,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class tab2 extends StatefulWidget {
  @override
  _tab2State createState() => _tab2State();
}

class _tab2State extends State<tab2> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            new Container(
                margin: EdgeInsets.only(left: 16, top: 8),
                height: 120.0,
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(4),
                        child: Stack(children: [
                          ClipRRect(child: Image.asset("assets/rect.png"), borderRadius: BorderRadius.circular(8.0),),

                          Positioned(top: 0.0,left: 0.0,right: 0.0,bottom: 0.0,child: Icon(Icons.play_circle_outline,size: 50,color: Colors.white,))

                        ],)),



                  ],
                )),
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
                                  fontSize: 12, color: HexColor("484848")),
                              textAlign: TextAlign.justify,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(right: 18, top: 12),
                              child: Divider(
                                thickness: 1,
                                color: HexColor("CECECE"),
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(left: 16, top: 8),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.phone,
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
                            " Call Now",
                            style: TextStyle(
                                fontSize: 14, color: HexColor("000000")),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              '+91 9877662312',
                              style: TextStyle(
                                  fontSize: 12, color: HexColor("484848")),
                              textAlign: TextAlign.justify,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(right: 18, top: 12),
                              child: Divider(
                                thickness: 1,
                                color: HexColor("CECECE"),
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(left: 16, top: 8),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.speaker_notes,
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
                            "Mail Address",
                            style: TextStyle(
                                fontSize: 14, color: HexColor("000000")),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              'info@Compny.com',
                              style: TextStyle(
                                  fontSize: 12, color: HexColor("484848")),
                              textAlign: TextAlign.justify,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(right: 18, top: 12),
                              child: Divider(
                                thickness: 1,
                                color: HexColor("CECECE"),
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(left: 16, top: 8),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.language,
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
                            "Website",
                            style: TextStyle(
                                fontSize: 14, color: HexColor("000000")),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              'www.company.com',
                              style: TextStyle(
                                  fontSize: 12, color: HexColor("484848")),
                              textAlign: TextAlign.justify,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(right: 18, top: 12),
                              child: Divider(
                                thickness: 1,
                                color: HexColor("CECECE"),
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(left: 16, top: 8),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.query_builder,
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
                            "Opentime",
                            style: TextStyle(
                                fontSize: 14, color: HexColor("000000")),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              ' 09:00 AM - 08:00 PM ',
                              style: TextStyle(
                                  fontSize: 12, color: HexColor("484848")),
                              textAlign: TextAlign.justify,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(right: 18, top: 12),
                              child: Divider(
                                thickness: 1,
                                color: HexColor("CECECE"),
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Hotel Name".toUpperCase(),
                    style: TextStyle(letterSpacing: 1,fontWeight: FontWeight.w400,fontSize: 16, color: HexColor("333333")),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(height: 1.8,letterSpacing: .1,fontWeight: FontWeight.w400,fontSize: 12, color: HexColor("7A7A7A")),
                  )
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SERVICES",
                    style: TextStyle(letterSpacing: 1,fontWeight: FontWeight.w400,fontSize: 16, color: HexColor("333333")),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 18,
                                color: HexColor("484848"),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Service 1",
                                style: TextStyle(
                                    fontSize: 12, color: HexColor("484848")),
                              )
                            ],
                          )),
                      Expanded(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 18,
                                color: HexColor("484848"),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Service 1",
                                style: TextStyle(
                                    fontSize: 12, color: HexColor("484848")),
                              )
                            ],
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 18,
                                color: HexColor("484848"),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Service 1",
                                style: TextStyle(
                                    fontSize: 12, color: HexColor("484848")),
                              )
                            ],
                          )),
                      Expanded(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 18,
                                color: HexColor("484848"),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Service 1",
                                style: TextStyle(
                                    fontSize: 12, color: HexColor("484848")),
                              )
                            ],
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 18,
                                color: HexColor("484848"),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Service 1",
                                style: TextStyle(
                                    fontSize: 12, color: HexColor("484848")),
                              )
                            ],
                          )),
                      Expanded(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 18,
                                color: HexColor("484848"),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Service 1",
                                style: TextStyle(
                                    fontSize: 12, color: HexColor("484848")),
                              )
                            ],
                          )),
                    ],
                  ),
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "REVIEWS AND RATING",
                    style: TextStyle(letterSpacing: 1,fontWeight: FontWeight.w400,fontSize: 16, color: HexColor("333333")),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 59,
                        width: 59,
                        decoration: BoxDecoration(
                            color: HexColor("FAA51A"),
                            borderRadius:
                            BorderRadius.all(Radius.circular(16))),
                        child: Center(
                          child: Text(
                            "5",
                            style: TextStyle(
                                fontSize: 19, color: HexColor("ffffff")),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        children: [
                          Text(
                            "5 Rating",
                            style: TextStyle(
                                fontSize: 15, color: HexColor("383838")),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            " (101 Review) ",
                            style: TextStyle(
                                fontSize: 11, color: HexColor("484848")),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "USER REVIEWS",
                    style: TextStyle(fontSize: 13, color: HexColor("333333")),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRect(
                        child: Image.asset(
                          "assets/user_rest.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "User Name",
                            style: TextStyle(
                                fontSize: 15, color: HexColor("383838")),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Lorem contant of review  ",
                            style: TextStyle(
                                fontSize: 11, color: HexColor("484848")),
                          ),
                          SizedBox(
                            height: 2,
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
                                itemPadding:
                                EdgeInsets.symmetric(horizontal: 2.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        width: 50,
                        child: ClipRect(
                          child: Image.asset(
                            "assets/user_rest1.png",
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "User Name",
                            style: TextStyle(
                                fontSize: 15, color: HexColor("383838")),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Lorem contant of review  ",
                            style: TextStyle(
                                fontSize: 11, color: HexColor("484848")),
                          ),
                          SizedBox(
                            height: 2,
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
                                itemPadding:
                                EdgeInsets.symmetric(horizontal: 2.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (BuildContext)=>view_all()));
                  },
                  child: Container(
                    width: 100,
                    height: 38,
                    child: Center(
                      child: Text(
                        "View All",
                        style: TextStyle(letterSpacing: .1,fontWeight: FontWeight.w400,color: HexColor("484848")),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border:
                        Border.all(width: 1, color: HexColor("D9D9D9"))),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Rate This",
                  style: TextStyle(fontSize: 13, color: HexColor("484848")),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                SizedBox(
                  width: 18,
                ),
                RatingBar.builder(
                  initialRating: 3,
                  itemSize: 22,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      padding: const EdgeInsets.all(0.0),
                      child: TextField(
                        decoration: new InputDecoration(
                            alignLabelWithHint: false,
                            contentPadding: EdgeInsets.symmetric(vertical: 4),
                            floatingLabelBehavior:
                            FloatingLabelBehavior.never,
                            labelText: 'Enter Your Review',
                            labelStyle: TextStyle(
                                fontSize: 11, color: HexColor("969696")),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: new UnderlineInputBorder(
                              borderRadius: new BorderRadius.circular(0.0),
                              borderSide: new BorderSide(
                                color: HexColor("969696"),
                              ),
                            ),
                            focusedBorder: new UnderlineInputBorder(
                                borderRadius: new BorderRadius.circular(0.0),
                                borderSide: new BorderSide(
                                  color: HexColor("D1D1D1"),
                                ))),
                        style:
                        new TextStyle(color: Colors.black, fontSize: 15),
                      )),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 20,
                ),
                Image.asset("assets/user_rest1.png"),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Your Name",
                  style: TextStyle(fontSize: 12, color: HexColor("4B4848")),
                ),
                Expanded(child: SizedBox()),
                Container(
                  height: 26,
                  width: 100,
                  child: Center(
                    child: Text(
                      "Publish",
                      style:
                      TextStyle(fontSize: 12, color: HexColor("ffffff")),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: HexColor("FAA51A")),
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "RELATED",
                  style: TextStyle(color: HexColor("333333"), fontSize: 16),
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
                                "assets/demo_hotell.png",
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
                                  "Restaurents",
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
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "ALSO LISTED IN",
                  style: TextStyle(color: HexColor("333333"), fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border:
                      Border.all(color: HexColor("B8B8B8"), width: 1)),
                  child: Center(
                    child: Text("Restaurents"),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border:
                      Border.all(color: HexColor("B8B8B8"), width: 1)),
                  child: Center(
                    child: Text("Bakeries"),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border:
                      Border.all(color: HexColor("B8B8B8"), width: 1)),
                  child: Center(
                    child: Text("Cake Shop"),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border:
                      Border.all(color: HexColor("B8B8B8"), width: 1)),
                  child: Center(
                    child: Text("Multi"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: new ColorFilter.mode(HexColor("663821").withOpacity(.9), BlendMode.dstATop),
                      image: AssetImage(
                        "assets/rect_back.png",
                      ),
                      fit: BoxFit.fitWidth)),
              child: Column(
                children: [
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "SUBMIT ENQUIRY",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            padding: const EdgeInsets.all(0.0),
                            child: TextField(
                              decoration: new InputDecoration(
                                  alignLabelWithHint: false,
                                  contentPadding:
                                  EdgeInsets.symmetric(vertical: 4),
                                  floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                                  labelText: 'Your Name',
                                  labelStyle: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("ffffff")),
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  enabledBorder: new UnderlineInputBorder(
                                    borderRadius:
                                    new BorderRadius.circular(0.0),
                                    borderSide: new BorderSide(
                                      color: HexColor("ffffff"),
                                    ),
                                  ),
                                  focusedBorder: new UnderlineInputBorder(
                                      borderRadius:
                                      new BorderRadius.circular(0.0),
                                      borderSide: new BorderSide(
                                        color: HexColor("D1D1D1"),
                                      ))),
                              style: new TextStyle(
                                  color: Colors.black, fontSize: 15),
                            )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            padding: const EdgeInsets.all(0.0),
                            child: TextField(
                              decoration: new InputDecoration(
                                  alignLabelWithHint: false,
                                  contentPadding:
                                  EdgeInsets.symmetric(vertical: 4),
                                  floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                                  labelText: 'Your Name',
                                  labelStyle: TextStyle(
                                      fontSize: 12,
                                      color: HexColor("ffffff")),
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  enabledBorder: new UnderlineInputBorder(
                                    borderRadius:
                                    new BorderRadius.circular(0.0),
                                    borderSide: new BorderSide(
                                      color: HexColor("ffffff"),
                                    ),
                                  ),
                                  focusedBorder: new UnderlineInputBorder(
                                      borderRadius:
                                      new BorderRadius.circular(0.0),
                                      borderSide: new BorderSide(
                                        color: HexColor("D1D1D1"),
                                      ))),
                              style: new TextStyle(
                                  color: Colors.black, fontSize: 15),
                            )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25),

                        height: 26,
                        width: 100,
                        child: Center(
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                fontSize: 12, color: HexColor("000000")),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(20)),
                            color: HexColor("FAA51A")),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: Divider(
                      color: HexColor("DEDEDE"),
                    ))
              ],
            ),
            Container(
              child: Stack(
                children: [
                  Container(
                    height: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Divider(
                                  color: HexColor("DEDEDE"),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      right: 20,
                      bottom: 4,
                      height: 30,
                      width: 30,
                      child: Container(
                        decoration: BoxDecoration(
                            color: HexColor("DADADA"),
                            borderRadius:
                            BorderRadius.all(Radius.circular(30))),
                        child: Center(
                          child: Icon(Icons.keyboard_arrow_up),
                        ),
                      )),
                  Positioned(
                    child: Text("REPORT AN ERROR"),
                    left: 30,
                    bottom: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}















class ImageDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Stack(children: [

        ClipRRect(
          child: Image.asset("assets/rect.png",fit: BoxFit.cover,),
          borderRadius: BorderRadius.circular(14.0),
        ),
Positioned(child: GestureDetector(
  onTap: (){
    Navigator.pop(context);
  },

  child: Icon(Icons.close,color:Colors.white,)),right: 10,top: 10,),
                
    
    
    Positioned(child: Container(decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(30)),height: 30,width: 30,child: Center(child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 14,)),),left: 10,top: 0,bottom: 0,)




      ],),
    );
  }
}

