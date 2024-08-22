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
  const ButtonTypes({super.key});

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
            title: const Text('Flutter Button Widgets',
            style: TextStyle(
              color: Colors.white

            ),
            ),
            centerTitle: true,
            backgroundColor: Colors.brown,
          ),
          body: Center(
              child: Column(
                  children:[
                Container(
                  child: Center(
                    child: Text(
                      "You clicked:$message",
                      style: const TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  // margin: EdgeInsets.all(25),
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.deepPurpleAccent)
                    ),
                    child: const Text(
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
                        backgroundColor: WidgetStateProperty.all(Colors.teal)
                    ),
                    child: const Text(
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
                  margin: const EdgeInsets.all(25),
                  child: FloatingActionButton(
                    backgroundColor: Colors.green.shade700,
                    onPressed: () {
                      setState(() {
                        message = "Floating Action Button";
                      });
                    },
                    child: const Icon(Icons.add),
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
                        style: const TextStyle(
                          fontSize: 30
                        ),
                        ),
                      );
                    }).toList(),

                    onChanged: (String? value) {
                      setState(() {
                        dropdownvalue = value!;
                        message = "$value from drop down";
                      });
                    },

                  // After selecting the desired option,it will
                  // change button value to selected value
                  ),
                ),


                Container(
                  padding: const EdgeInsets.all(50),
                  alignment: Alignment.center,
                  child: IconButton(
                    icon: const Icon(
                      Icons.directions_transit,
                    ),
                    iconSize: 50,
                    color: Colors.deepOrangeAccent,
                    splashColor: Colors.red,
                    onPressed: () {
                      setState(() {
                        message = "Icon Button";
                      });
                    },
                  ),
                ),



                Container(
                  margin: const EdgeInsets.all(20),
                  child: PopupMenuButton(

                    itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 1,
                        child: Text("First"),
                      ),
                      const PopupMenuItem(
                        value: 2,
                        child: Text("Second"),
                      )
                    ],
                    onSelected: (value) {
                      setState(() {
                        message = "Popup$value";
                      });
                    },
                  ),
                ),




                Center(
                  child: OutlinedButton(
                    style: ButtonStyle(
                        backgroundColor:
                        WidgetStateProperty.all(Colors.amberAccent)),
                    child: const Text('Outline Button'),
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