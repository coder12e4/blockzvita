import 'package:flutter/material.dart';
import 'package:inthzarapp/constants/HexColor.dart';
import 'package:inthzarapp/constants/constants.dart';
import 'package:inthzarapp/dashbord/changepassword.dart';
import 'package:inthzarapp/dashbord/forgotpassword.dart';
import 'package:inthzarapp/dashbord/freelance/freelance_listing.dart';
import 'package:inthzarapp/dashbord/hospital/hospital.dart';
import 'package:inthzarapp/dashbord/jobs/job_list_inner.dart';
import 'package:inthzarapp/dashbord/jobs/jobs.dart';
import 'package:inthzarapp/dashbord/jobs/jobs_lists.dart';
import 'package:inthzarapp/dashbord/landing.dart';
import 'package:inthzarapp/dashbord/my_business/my_business.dart';
import 'package:inthzarapp/dashbord/my_business/my_business_inn.dart';
import 'package:inthzarapp/dashbord/my_business/mybussiness_edit.dart';
import 'package:inthzarapp/dashbord/navigation_drover/add_bussiness/bussines_page.dart';
import 'package:inthzarapp/dashbord/otppage.dart';
import 'package:inthzarapp/dashbord/profile_home.dart';
import 'package:inthzarapp/dashbord/register.dart';
import 'package:inthzarapp/dashbord/restorents/search_restorents.dart';
import 'package:inthzarapp/landing_tbs/tabs/catogory_page.dart';
import 'package:inthzarapp/landing_tbs/tabs/leads.dart';
import 'package:inthzarapp/landing_tbs/tabs/quik_find.dart';
import 'package:inthzarapp/landing_tbs/tabs/search.dart';
import 'package:inthzarapp/login/login.dart';
import 'package:inthzarapp/profile/about_us.dart';
import 'package:inthzarapp/profile/faverites.dart';
import 'package:inthzarapp/profile/help.dart';
import 'package:inthzarapp/profile/notifications.dart';
import 'package:inthzarapp/profile/transactions.dart';



class tabs_home extends StatefulWidget {

  const tabs_home({ Key key,  this.seleced_index,this.show_appbar }) : super(key: key);

  final int seleced_index;
  final bool show_appbar;


  @override
  _tabs_homeState createState() => _tabs_homeState();
}

class _tabs_homeState extends State<tabs_home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List<Widget>home_data;
  int _selectedIndex = 10;

  bool viewVisible = true ;

  void showWidget(){
    setState(() {
      viewVisible = true ;
    });
  }

  void hideWidget(){
    setState(() {
      viewVisible = false ;
    });
  }
  
  @override
  void initState() {
    super.initState();

    _selectedIndex=widget.seleced_index;
    viewVisible=widget.show_appbar;


    home_data=[
      landing(),  //0
      catogory(),  //1
      search(), //2
      leads(),  //3
      profile(),  //4
      add_bussiness(), //5
      quick_find(), //6
      help(),      //7
      about_us(), //8
      profile(), //9
      login(), //10
      catogory(), //11
      restourents(), //12
      freelance_listing(), //13
      jobs__(), //14
      my_listings(),//15
      favorites(),//16
      transactions(),//17
      notifications(),//18
      register(),//19
      otp_page(),//20
      jobs_list(),//21
      job_list_inner(),//22
      forgotpassword(),//23
      otp_page(),//24
      Change_password(),//25
      hospital(),//26
      my_bussiness_edit()

    ];
  }

  void _onItemTapped(int index) {

print(index);
    setState(() {
      _selectedIndex = index+1;

      if(_selectedIndex==3){
        _selectedIndex=0;

            Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>tabs_home(seleced_index: 0,show_appbar: true,)));
      }

      if(_selectedIndex==4){
        _selectedIndex=3;

        print("3 seleced");

      }
      if(_selectedIndex==5){
        _selectedIndex=4;
        print("4 seleced");
      }


      hideWidget();
    });
  }

  Widget myAppBarIcon() {
    return Container(
      margin: EdgeInsets.only(top: 4),
      width: 35,
      height: 35,
      child: Stack(
        children: [
          new IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.white,
            ),
            onPressed: (){

            },
          ),
          Container(
            width: 30,
            height: 30,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 10),
            child: Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: HexColor("FFC464"),
                  border: Border.all(color: Colors.white, width: 0)),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Center(
                  child: Text(
                    "1",
                    //   _counter.toString(),
                    style: TextStyle(fontSize: 8, color: Colors.black87,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget BottonIcon() {
    return Container(
      margin: EdgeInsets.only(top: 0,right: 0,left: 5),

      child: Stack(
        children: [
          Container(
            width: 30,
            height: 30,
            padding: EdgeInsets.only(left: 0,right: 10,top: 4),
            child: new Icon(

              Icons.chat_bubble_outline,
            color: Colors.grey,
            ),
          ),

        Positioned(
          child: Container(
          width: 24,
          height: 24,
          alignment: Alignment.topRight,
          margin: EdgeInsets.only(top: 2,right: 4,),
          child: Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: HexColor("FFC464"),
                border: Border.all(color: Colors.white, width: 0)),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Center(
                child: Text(
                  "1",
                  //   _counter.toString(),
                  style: TextStyle(fontSize: 8, color: Colors.black87,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
          top: 0,
          right: 0,
        )
        ],
      ),
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey ,

      drawer: Drawer(child:
      Container(
        color: Colors.white,
        child: Column(
          // Important: Remove any padding from the ListView.
          children: <Widget>[
            Container(
              height: 163,
              color: HexColor("FFECCE"),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        height: 76,
                        width: 76,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadius.all(Radius.circular(76))),
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Customer Name",
                        style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w400, // light
                            fontStyle: FontStyle.normal,
                            fontFamily: 'Roboto'

                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Welcome to Inthezar",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w300, // light
                            fontStyle: FontStyle.normal,
                            color: HexColor("6F6F6F")),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),

            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 40,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(20, 8, 10, 0),
                        child: Image.asset("assets/icon_home.png"),
                      ),
                      flex: 2,
                    ),
                    Expanded(
                      child: Text(
                        'HOME',
                        style: TextStyle(fontSize: 14,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w300, // light
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      flex: 8,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),


            GestureDetector(
              onTap: () {
             //   Navigator.push(context, MaterialPageRoute( builder: (BuildContext) => add_bussiness()));
              hideWidget();
              Navigator.pop(context);
              setState(() {
                _selectedIndex=5;
              });

              },
              child: Container(
                height: 40,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                        child: Icon(Icons.add_box_outlined,color: HexColor("757575"),),
                        // Icon(
                        //   Icons.add_box,
                        //   color: HexColor("DADADA"),
                        // ),
                      ),
                      flex: 2,
                    ),
                    Expanded(
                      child: Text(
                        'ADD A BUSINESS',
                        style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w300, // light
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      flex: 8,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            GestureDetector(
              onTap: () {
              //  Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => quick_find()));

                hideWidget();
                Navigator.pop(context);
                setState(() {
                  _selectedIndex=6;
                });

              },
              child: Container(
                height: 40,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                        child: Icon(
                          Icons.zoom_in,
                          color: HexColor("757575"),
                        ),
                      ),
                      flex: 2,
                    ),
                    Expanded(
                      child: Text(
                        'QUICK FINDS',
                        style: TextStyle(fontSize: 14,

                          letterSpacing: 1,
                          fontWeight: FontWeight.w300, // light
                          fontStyle: FontStyle.normal,


                        ),
                      ),
                      flex: 8,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
              //  Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>help()));

                hideWidget();
                Navigator.pop(context);
                setState(() {
                  _selectedIndex=7;
                });


              },
              child: Container(
                height: 40,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                        child: Icon(
                          Icons.help_outline,
                          color: HexColor("757575"),
                        ),
                      ),
                      flex: 2,
                    ),
                    Expanded(
                      child: Text(
                        'HELP',
                        style: TextStyle(fontSize: 14,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w300, // light
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      flex: 8,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
               // Navigator.push(context,MaterialPageRoute(builder: (BuildContext)=>about_us()));
                hideWidget();
                Navigator.pop(context);
                setState(() {
                  _selectedIndex=8;
                });

              },
              child: Container(
                height: 40,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                        child:Icon(Icons.local_phone_outlined,color: HexColor("757575"),),
                        // Icon(
                        //   Icons.local_phone,
                        //   color: HexColor("DADADA"),
                        // ),
                      ),
                      flex: 2,
                    ),
                    Expanded(
                      child: Text(
                        'ABOUT US',
                        style: TextStyle(fontSize: 14,                          letterSpacing: 1,
                          fontWeight: FontWeight.w300, // light
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      flex: 8,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
               // Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => profile()));

                hideWidget();
                Navigator.pop(context);
                setState(() {
                  _selectedIndex=9;
                });
              },
              child: Container(
                height: 40,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                        child: Icon(Icons.brightness_5_outlined,color: HexColor("757575")),
                        // Icon(
                        //   Icons.brightness_5,
                        //   color: HexColor("DADADA"),
                        // ),
                      ),
                      flex: 2,
                    ),
                    Expanded(
                      child: Text(
                        'PROFILE',
                        style: TextStyle(fontSize: 14,

                          letterSpacing: 1,
                          fontWeight: FontWeight.w300, // light
                          fontStyle: FontStyle.normal,

                        ),
                      ),
                      flex: 8,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => login()));

                hideWidget();
                Navigator.pop(context);
                setState(() {
                  _selectedIndex=10;
                });
                },
              child: Container(
                height: 40,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                        child: Icon(
                          Icons.power_settings_new,
                          color: HexColor("757575"),
                        ),
                      ),
                      flex: 2,
                    ),
                    Expanded(
                      child: Text(
                        'LOGOUT',
                        style: TextStyle(fontSize: 14,                          letterSpacing: 1,
                          fontWeight: FontWeight.w300, // light
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      flex: 8,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),

/*
drawer: navigation(
  onTabSelected: _onItemTapped,

  items: [

    nav_item(iconData: Icons.bookmark_border, text: 'CATOGORY'),
    nav_item(iconData: Icons.search, text: 'SEARCH'),
    nav_item(iconData: Icons.chat_bubble_outline, text: 'LEADS'),
    nav_item(iconData: Icons.perm_identity_outlined, text: 'PROFILE'),


  ],
),


 */
      appBar:viewVisible? PreferredSize(
        preferredSize: Size.fromHeight(40),
        child:Visibility(
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          visible: viewVisible,
          child:  AppBar(
            elevation: 0,
            backgroundColor: HexColor(constants.colorprimary),
            leading: new IconButton(
                icon: new Image.asset(
                  "assets/leading.png",
                  height: 22,
                  width: 22,
                ),
                onPressed: () => _scaffoldKey.currentState.openDrawer()),
            actions: [
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 18,show_appbar: false,)));
                  },
                  child: Padding(padding: EdgeInsets.only(right: 8), child: myAppBarIcon())),
              //Center(child: FaIcon(FontAwesomeIcons.calendarWeek,color: Colors.white,size: 26.0,))



            ],
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("INTHEZAR ",
                    style: TextStyle(
                        letterSpacing: 3,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ],
            ),
          ),


        ),
      ):null,
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: HexColor(constants.colorprimary),
        onPressed: () {

          Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => tabs_home(seleced_index: 0,show_appbar: true,)));



        },
        child: Image.asset("assets/fab.png"),
        elevation: 2.0,
      ),
      bottomNavigationBar: FABBottomAppBar2(
        centerItemText: '',
        color: Colors.grey,
        selectedColor: Colors.grey ,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _onItemTapped,
        items: [
          FABBottomAppBarItem(iconData: Icon(Icons.bookmark_border,color: Colors.grey,), text: 'CATEGORY'),
          FABBottomAppBarItem(iconData: Icon(Icons.search,color: Colors.grey), text: 'SEARCH'),
          FABBottomAppBarItem(iconData: Icon(Icons.check,color: Colors.transparent,), text: '',),
          FABBottomAppBarItem(iconData: BottonIcon(), text: 'LEADS'),
          FABBottomAppBarItem(iconData: Icon(Icons.perm_identity,color: Colors.grey,), text: 'PROFILE'),
        ],
      ),

      body: home_data[_selectedIndex],);

  }
}




class FABBottomAppBarItem {
  FABBottomAppBarItem({this.iconData, this.text});
  Widget iconData;
  String text;
}

class FABBottomAppBar extends StatefulWidget {
  FABBottomAppBar({
    this.items,
    this.centerItemText,
    this.height: 60.0,
    this.iconSize: 24.0,
    this.backgroundColor,
    this.color,
    this.selectedColor,
    this.notchedShape,
    this.onTabSelected,
  }) {
    assert(this.items.length == 2 || this.items.length == 4);
  }
  final List<FABBottomAppBarItem> items;
  final String centerItemText;
  final double height;
  final double iconSize;
  final Color backgroundColor;
  final Color color;
  final Color selectedColor;
  final NotchedShape notchedShape;
  final ValueChanged<int> onTabSelected;

  @override
  State<StatefulWidget> createState() => FABBottomAppBar2State();
}

class FABBottomAppBar2State extends State<FABBottomAppBar2> {
  int _selectedIndex = 0;
  _updateIndex(int index) {
    widget.onTabSelected(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(widget.items.length, (int index) {
      return _buildTabItem(
        item: widget.items[index],
        index: index,
        onPressed: _updateIndex,
      );
    });



  //  items.insert(items.length >> 1, _buildMiddleTabItem());

    return BottomAppBar(
      shape: widget.notchedShape,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: items,
      ),
      color: widget.backgroundColor,
    );
  }



  Widget _buildTabItem({
    FABBottomAppBarItem item,
    int index,
    ValueChanged<int> onPressed,
  }) {
    Color color = _selectedIndex == index ? widget.selectedColor : widget.color;
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => onPressed(index),
            child: Container(

              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 35,
                    width: 35,
                    child: item.iconData,
                  ),
                  SizedBox(height: 6,),
                  Container(
                    child: Text(
                      item.text,
                      style: TextStyle(color: color,fontSize: 9.0,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w400, // light
                        fontStyle: FontStyle.normal,

                      ),
                    ),
                  )


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}




class FABBottomAppBarItem1 {
  FABBottomAppBarItem1({this.iconData, this.text});
  IconData iconData;
  String text;
}

class FABBottomAppBar1 extends StatefulWidget {
  FABBottomAppBar1({
    this.items,
    this.centerItemText,
    this.height: 60.0,
    this.iconSize: 24.0,
    this.backgroundColor,
    this.color,
    this.selectedColor,
    this.notchedShape,
    this.onTabSelected,
  }) {
    assert(this.items.length == 2 || this.items.length == 4);
  }
  final List<FABBottomAppBarItem> items;
  final String centerItemText;
  final double height;
  final double iconSize;
  final Color backgroundColor;
  final Color color;
  final Color selectedColor;
  final NotchedShape notchedShape;
  final ValueChanged<int> onTabSelected;

  @override
  State<StatefulWidget> createState() => FABBottomAppBar2State();
}

class FABBottomAppBarState1 extends State<FABBottomAppBar1> {
  int _selectedIndex = 0;
  _updateIndex(int index) {
    widget.onTabSelected(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(widget.items.length, (int index) {
      return _buildTabItem(
        item: widget.items[index],
        index: index,
        onPressed: _updateIndex,
      );
    });



    //  items.insert(items.length >> 1, _buildMiddleTabItem());

    return BottomAppBar(
      shape: widget.notchedShape,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: items,
      ),
      color: widget.backgroundColor,
    );
  }



  Widget _buildTabItem({
    FABBottomAppBarItem item,
    int index,
    ValueChanged<int> onPressed,
  }) {
    Color color = _selectedIndex == index ? widget.selectedColor : widget.color;
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => onPressed(index),
            child: Container(
              padding: EdgeInsets.only(bottom: 12,left: 8,right: 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 item.iconData,
                  SizedBox(height: 6,),
                  Text(
                    item.text,
                    style: TextStyle(color: color,fontSize: 9.0,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w400, // light
                      fontStyle: FontStyle.normal,

                    ),
                  ),
                  SizedBox(height: 6,),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



class FABBottomAppBarItem2 {
  FABBottomAppBarItem2({this.iconData, this.text});
  IconData iconData;
  String text;
}

class FABBottomAppBar2 extends StatefulWidget {
  FABBottomAppBar2({
    this.items,
    this.centerItemText,
    this.height: 60.0,
    this.iconSize: 24.0,
    this.backgroundColor,
    this.color,
    this.selectedColor,
    this.notchedShape,
    this.onTabSelected,
  }) {
    assert(this.items.length == 2 || this.items.length == 5);
  }
  final List<FABBottomAppBarItem> items;
  final String centerItemText;
  final double height;
  final double iconSize;
  final Color backgroundColor;
  final Color color;
  final Color selectedColor;
  final NotchedShape notchedShape;
  final ValueChanged<int> onTabSelected;

  @override
  State<StatefulWidget> createState() => FABBottomAppBar2State();
}

class FABBottomAppBarState2 extends State<FABBottomAppBar2> {
  int _selectedIndex = 0;
  _updateIndex(int index) {
    widget.onTabSelected(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(widget.items.length, (int index) {
      return _buildTabItem(
        item: widget.items[index],
        index: index,
        onPressed: _updateIndex,
      );
    });



    //  items.insert(items.length >> 1, _buildMiddleTabItem());

    return BottomAppBar(
      shape: widget.notchedShape,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: items,
      ),
      color: widget.backgroundColor,
    );
  }



  Widget _buildTabItem({
    FABBottomAppBarItem item,
    int index,
    ValueChanged<int> onPressed,
  }) {
    Color color = _selectedIndex == index ? widget.selectedColor : widget.color;
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => onPressed(index),
            child: Container(
margin: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  item.iconData,
                  SizedBox(height: 6,),
                  Text(
                    item.text,
                    style: TextStyle(color: color,fontSize: 9.0,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w400, // light
                      fontStyle: FontStyle.normal,

                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}








