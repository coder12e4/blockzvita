import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class nav_item {
  nav_item({this.iconData, this.text});
  IconData iconData;
  String text;
}

class navigation extends StatefulWidget {
  navigation({
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
  final List<nav_item> items;
  final String centerItemText;
  final double height;
  final double iconSize;
  final Color backgroundColor;
  final Color color;
  final Color selectedColor;
  final NotchedShape notchedShape;
  final ValueChanged<int> onTabSelected;

  @override
  State<StatefulWidget> createState() => navigationState();
}

class navigationState extends State<navigation> {
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
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items,
      ),
      color: widget.backgroundColor,
    );
  }



  Widget _buildTabItem({
    nav_item  item,
    int index,
    ValueChanged<int> onPressed,
  }) {
    Color color = _selectedIndex == index ? widget.selectedColor : widget.color;
    return   Container(
      height: 40,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
              child: Icon(
                  item.iconData, color: color, size: widget.iconSize),
            ),
            flex: 2,
          ),
          Expanded(
            child: Text(
              item.text,
              style: TextStyle(fontSize: 14,                          letterSpacing: 1,
                fontWeight: FontWeight.w300, // light
                fontStyle: FontStyle.normal,
              ),
            ),
            flex: 8,
          )
        ],
      ),
    );
  }
}

