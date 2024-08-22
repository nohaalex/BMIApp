import 'package:flutter/material.dart';

class Orient extends StatelessWidget {
  var orientation, size, height, width;

  Orient({super.key});
  @override
  Widget build(BuildContext context) {
    // getting the orientation of the app
    orientation = MediaQuery.of(context).orientation;
    //size of the windows
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MQ orientation"),
          backgroundColor: Colors.green,
        ),
      // checking the orientation
        body: orientation == Orientation.landscape
            ? Container(
          color: Colors.blue,
          height: height/4,
          width: width/4,
        )
            : Container(
          height: height / 2,
          width: width / 2,
          color: Colors.red,
        ),
      ),
    );
  }
}