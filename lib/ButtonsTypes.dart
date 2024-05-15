import 'package:flutter/material.dart';

var message = "no button";
var items = [
  'Item 1',
  'Item 2',
  'Item 3',
  'Item 4',
  'Item 5',
];

String dropdownvalue = 'Item 1';

class ButtonTypes extends StatefulWidget {
  @override
  _ButtonTypesState createState() => _ButtonTypesState();
}
class _ButtonTypesState extends State<ButtonTypes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.tealAccent,
          appBar: AppBar(
            title: Text('Flutter Button Widgets',
            style: TextStyle(
              color: Colors.white

            ),
            ),
            centerTitle: true,
            backgroundColor: Colors.brown,
          ),
          body: Center(
              child: Column(
                  children: <Widget>[
                Container(
                  child: Center(
                    child: Text(
                      "You clicked:${message}",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
// margin: EdgeInsets.all(25),
                  child: TextButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent)),
                    child: Text(
                      'TextButton',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    onPressed: () {
                      setState(() {
                        message = "Text Button";
                      });
                    },
                  ),
                ),
                Container(
// margin: EdgeInsets.all(25),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.teal)),
                    child: Text(
                      'Elevated Button',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    onPressed: () {
                      setState(() {
                        message = "Elevated Button";
                      });
                    },
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(25),
                  child: FloatingActionButton(
                    child: Icon(Icons.add),
                    backgroundColor: Colors.green.shade700,
                    onPressed: () {
                      setState(() {
                        message = "Floating Action Button";
                      });
                    },
                  ),
                ),
                Container(
                  child: DropdownButton(
// Initial Value
                    value: dropdownvalue,
// Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),
// Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items,
                        style: TextStyle(
                          fontSize: 30
                        ),),
                      );
                    }).toList(),

                    onChanged: (String? value) {
                      setState(() {
                        dropdownvalue = value!;
                        message = "${value} from drop down";
                      });
                    },
// After selecting the desired option,it will
// change button value to selected value
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(50),
                  alignment: Alignment.center,
                  child: IconButton(
                    icon: Icon(
                      Icons.directions_transit,
                    ),
                    iconSize: 50,
                    color: Colors.deepOrangeAccent,
                    splashColor: Colors.purple,
                    onPressed: () {
                      setState(() {
                        message = "Icon Button";
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: PopupMenuButton(

                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text("First"),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: Text("Second"),
                        value: 2,
                      )
                    ],
                    onSelected: (value) {
                      setState(() {
                        message = "Popup${value}";
                      });
                    },
                  ),
                ),
                Center(
                  child: OutlinedButton(
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.amberAccent)),
                    child: Text('Outline Button'),
                    onPressed: () {
                      setState(() {
                        message = "Outlined Button";
                      });
                    },
                  ),
                ),
              ]
              )
          )
      ),
    );
  }
}