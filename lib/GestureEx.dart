
import 'package:flutter/material.dart';

class Gestureex extends StatefulWidget {
  const Gestureex({super.key});

  @override
  State<Gestureex> createState() => _GestureexState();
}

class _GestureexState extends State<Gestureex> {

  bool? c=false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GESTURE',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,

          ),
          ),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
      body: GestureDetector(
        onTap: (){
          setState(() {
            if(c==false){
              c=true;
            }
            else{
              c=false;
            }

          });
        },
        child: Center(
          child: Container(

            height: 300,
            width: 300,

            color:c==true?Colors.amber:Colors.red,
          ),
        ),
      )
      ),
    );
  }
}
