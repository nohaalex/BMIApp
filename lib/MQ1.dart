import 'package:flutter/material.dart';

class MQ1 extends StatelessWidget {

  var size, height, width;

  MQ1({super.key});
  @override
  Widget build(BuildContext context) {
// getting the size of the window
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Media Query example"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            color: Colors.green,
            height: height/2, //half of the height size
            width: width/2, //half of the width size
          ),
        ),
      ),
    );
  }
}