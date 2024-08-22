import 'package:flutter/material.dart';

class GridViewApp extends StatelessWidget {
  const GridViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Container example")),
        ),
        body: SafeArea(
          child: GridView.count(
            scrollDirection: Axis.vertical,
            crossAxisCount: 1,
            children: [
              Container(
// height: 20,
// width: 30,
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.green,
                      width: 5,
                    )),
// height: 20,
// width: 30,
                child: const Center(child: Text("One")),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.green,
                      width: 5,
                    )),
                child: const Center(child: Text("two")),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.green,
                      width: 5,
                    )),
                child: const Center(child: Text("three")),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.green,
                      width: 5,
                    )),
                child: const Center(child: Text("four")),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.green,
                      width: 5,
                    )),
                child: const Center(child: Text("five")),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.green,
                      width: 5,
                    )),
                child: const Center(child: Text("six")),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.green,
                      width: 5,
                    )),
                child: const Center(child: Text("Seven")),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.green,
                      width: 5,
                    )),
                child: const Center(child: Text("Eight")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}