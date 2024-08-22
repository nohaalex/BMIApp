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
          title: const Text('SCROLL',
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
                    padding: const EdgeInsets.all(120.00),
                    decoration: BoxDecoration(
                        color:flag?Colors.black:Colors.red,
                    ),
                    child: const Text('FIRST BOX',
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
                  padding: const EdgeInsets.all(120.00),
                  decoration: const BoxDecoration(
                      color: Colors.blue
                  ),
                  child: const Text('SECOND BOX',
                    style: TextStyle(
                        fontSize: 30
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 300,
                  width: 450,
                  padding: const EdgeInsets.all(120.00),
                  decoration: const BoxDecoration(
                      color: Colors.green
                  ),
                  child: const Text('THIRD BOX',
                    style: TextStyle(
                        fontSize: 30
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 300,
                  width: 450,
                  padding: const EdgeInsets.all(120.00),

                  decoration: const BoxDecoration(
                      color: Colors.grey
                  ),
                  child: const Text('FOURTH BOX',
                    style: TextStyle(
                        fontSize: 30
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 300,
                  width: 450,
                  padding: const EdgeInsets.all(120.00),
                  decoration: const BoxDecoration(
                      color: Colors.brown
                  ),
                  child: const Text('FIFTH BOX',
                    style: TextStyle(
                        fontSize: 30
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 300,
                  width: 450,
                  padding: const EdgeInsets.all(120.00),
                  decoration: const BoxDecoration(
                      color: Colors.blueAccent
                  ),
                  child: const Text('SIXTH BOX',
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
