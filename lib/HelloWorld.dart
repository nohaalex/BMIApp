import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn1/MyFlutterIcon.dart';



class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
              MyFlutterApp.grooveshark
          ),
          title: Text('HELLO THERE',
          style: TextStyle(
            fontFamily: 'Whisper',
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          toolbarHeight: 30,
          bottomOpacity: 22,
        ),
        backgroundColor: Colors.black,


        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    color: Colors.brown,
                  )
                ],

              ),

            ),
          ],
        ),

          ),
        );


  }
}
