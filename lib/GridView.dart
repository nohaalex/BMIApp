import 'package:flutter/material.dart';

class GridViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Container example")),
        ),
        body: SafeArea(
          child: GridView.count(
            scrollDirection: Axis.vertical,
            crossAxisCount: 1,
            children: [
              Container(
// height: 20,
// width: 30,
                child: Center(child: Text("One")),
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.green,
                      width: 5,
                    )),
              ),
              Container(
                height: 100,
                child: Center(child: Text("two")),
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.green,
                      width: 5,
                    )),
              ),
              Container(
                height: 100,
                child: Center(child: Text("three")),
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.green,
                      width: 5,
                    )),
              ),
              Container(
                height: 100,
                child: Center(child: Text("four")),
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.green,
                      width: 5,
                    )),
              ),
              Container(
                height: 100,
                child: Center(child: Text("five")),
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.green,
                      width: 5,
                    )),
              ),
              Container(
                height: 100,
                child: Center(child: Text("six")),
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.green,
                      width: 5,
                    )),
              ),
              Container(
                height: 100,
                child: Center(child: Text("Seven")),
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.green,
                      width: 5,
                    )),
              ),
              Container(
                height: 100,
                child: Center(child: Text("Eight")),
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.green,
                      width: 5,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}