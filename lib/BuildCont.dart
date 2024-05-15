import 'package:flutter/material.dart';

class BuildCont extends StatefulWidget {
  const BuildCont({super.key});

  @override
  State<BuildCont> createState() => _BuildContState();
}

class _BuildContState extends State<BuildCont> {


  Container BuildCont(Color c){
    return Container(
      height: 100,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color:c,
        border: Border.all(
          width: 10,
          color: Colors.black
        )
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'BUILD CONTAINER',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body:Column(
          children: [
            BuildCont(Colors.orange),
            BuildCont(Colors.blue),
            BuildCont(Colors.red),
          ],
        ) ,
      ),
    );
  }
}
