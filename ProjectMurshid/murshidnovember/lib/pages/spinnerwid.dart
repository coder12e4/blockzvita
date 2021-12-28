import 'package:flutter/material.dart';
import 'package:loginpage1/model/spinnerModel.dart';

class murshidwidget extends StatefulWidget {
  const murshidwidget({Key? key}) : super(key: key);

  @override
  _murshidwidgetState createState() => _murshidwidgetState();
}

class _murshidwidgetState extends State<murshidwidget> {
  List<spinnerMode> Namelist = [];
  spinnerMode? obj_Names;

  assign() {
    Namelist.add(spinnerMode("shyam", "24", "10"));
    Namelist.add(spinnerMode("Rafi", "25", "09"));
    Namelist.add(spinnerMode("Boby", "22", "10"));
    Namelist.add(spinnerMode("Sajeer", "26", "08"));
    Namelist.add(spinnerMode("Rashid", "24", "11"));
    Namelist.add(spinnerMode("Noufal", "24", "12"));
    Namelist.add(spinnerMode("Feba", "20", "08"));
    Namelist.add(spinnerMode("Silsiya", "21", "09"));
    Namelist.add(spinnerMode("Shanu", "27", "11"));
    Namelist.add(spinnerMode("Nazariya", "23", "08"));
  }

  String? selections;
  String? select;
  void radioButtonChanges(String? color) {
    setState(() {
      selections = color;
      switch (color) {
        case 'one':
          select = color;
          break;
        case 'two':
          select = color;
          break;
        case 'three':
          select = color;
          break;
        case 'four':
          select = color;
          break;
          defualt:
          select = null;
      }
    });
  }

  bool? Reminder = false;
  bool? Thenga = false;

  @override
  void initState() {
    assign();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 200,
              color: Colors.redAccent,
              child: DropdownButtonFormField<spinnerMode>(
                decoration: InputDecoration(enabledBorder: InputBorder.none),
                icon: const Icon(Icons.arrow_drop_down),
                iconSize: 14,
                elevation: 20,
                hint: Text("StudentsNames"),
                value: obj_Names,
                onChanged: (value) {
                  obj_Names = value;
                },
                items: Namelist.map<DropdownMenuItem<spinnerMode>>(
                    (spinnerMode val) {
                  return DropdownMenuItem<spinnerMode>(
                    value: val,
                    child: Text(val.name!),
                  );
                }).toList(),
              ),
            ),
            Container(
                child: Row(
              children: [
                Radio(
                    value: 'one',
                    groupValue: selections,
                    onChanged: radioButtonChanges),
                Text("Red Selected")
              ],
            )),
            Container(
                child: Row(
              children: [
                Radio(
                    value: 'two',
                    groupValue: selections,
                    onChanged: radioButtonChanges),
                Text("Black Selected")
              ],
            )),
            Container(
                child: Row(
              children: [
                Radio(
                    value: 'three',
                    groupValue: selections,
                    onChanged: radioButtonChanges),
                Text("White Selected")
              ],
            )),
            Container(
                child: Row(
              children: [
                Radio(
                    value: 'four',
                    groupValue: selections,
                    onChanged: radioButtonChanges),
                Text("Blue Selected")
              ],
            )),
            Container(
              child: Row(
                children: [
                  Checkbox(
                      value: Reminder,
                      onChanged: (value) {
                        setState(() {
                          Reminder = !Reminder!;
                        });
                      }),
                  Text("Theng kayaranam")
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Checkbox(
                      value: Thenga,
                      onChanged: (value) {
                        setState(() {
                          Thenga = !Thenga!;
                        });
                      }),
                  Text("Thenga idano")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
