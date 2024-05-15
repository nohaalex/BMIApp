import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ScrollViewProject extends StatefulWidget {
  const ScrollViewProject({super.key});

  @override
  State<ScrollViewProject> createState() => _ScrollViewProjectState();
}

class _ScrollViewProjectState extends State<ScrollViewProject> {

  bool flag=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SCROLL',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: SingleChildScrollView(

          child: Center(
            child: Column(
              children: [
                GestureDetector(
                  onTap:(){
                    setState(() {
                      flag=!flag;
                    });
          },
                  child: Container(
                    height: 300,
                    width: 450,
                    padding: EdgeInsets.all(120.00),
                    decoration: BoxDecoration(
                        color:flag?Colors.black:Colors.red,
                    ),
                    child: Text('FIRST BOX',
                      style: TextStyle(
                          fontSize: 30,

                      ),
                    textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  width: 450,
                  padding: EdgeInsets.all(120.00),
                  decoration: BoxDecoration(
                      color: Colors.blue
                  ),
                  child: Text('SECOND BOX',
                    style: TextStyle(
                        fontSize: 30
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 300,
                  width: 450,
                  padding: EdgeInsets.all(120.00),
                  decoration: BoxDecoration(
                      color: Colors.green
                  ),
                  child: Text('THIRD BOX',
                    style: TextStyle(
                        fontSize: 30
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 300,
                  width: 450,
                  padding: EdgeInsets.all(120.00),

                  decoration: BoxDecoration(
                      color: Colors.grey
                  ),
                  child: Text('FOURTH BOX',
                    style: TextStyle(
                        fontSize: 30
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 300,
                  width: 450,
                  padding: EdgeInsets.all(120.00),
                  decoration: BoxDecoration(
                      color: Colors.brown
                  ),
                  child: Text('FIFTH BOX',
                    style: TextStyle(
                        fontSize: 30
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 300,
                  width: 450,
                  padding: EdgeInsets.all(120.00),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent
                  ),
                  child: Text('SIXTH BOX',
                    style: TextStyle(
                        fontSize: 30
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
