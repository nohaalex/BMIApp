import 'package:flutter/material.dart';

class BuildCont extends StatefulWidget {
  const BuildCont({super.key});

  @override
  State<BuildCont> createState() => _BuildContState();
}

class _BuildContState extends State<BuildCont> {


  Container BuildCont(Color c, double h , double w){
    return Container(
      height: h,
      width: w,
      margin: const EdgeInsets.all(10),
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'BUILD CONTAINER',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body:Center(
          child: Column(
            children: [
              BuildCont(Colors.orange,50,300),
              BuildCont(Colors.blue,300,300),
              BuildCont(Colors.red,50,300),
            ],
          ),
        ) ,
      ),
    );
  }
}
