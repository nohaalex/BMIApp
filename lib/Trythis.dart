// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Trythis extends StatefulWidget {
  const Trythis({super.key});

  @override
  State<Trythis> createState() => _TrythisState();
}

class _TrythisState extends State<Trythis> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SafeArea(
        child: Scaffold(
            appBar: AppBar( 
              title: const Text("CONTACTS",
              style: TextStyle(
                fontFamily: 'Whisper',
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),
              ),
              leading: const Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
                size: 30,
              ),
              centerTitle: true,
              backgroundColor: Colors.red,
              actions: const [
                Icon(Icons.account_circle,
                color: Colors.white,),
          
              ],
            ),
            backgroundColor: Colors.black,
            body: SafeArea(
              child: Row(
                children: [
                  const Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 50,
                  ),
                  Container(
                    height: 50,
                    width: 245,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: const BorderRadius.all(Radius.elliptical(40.0, 40.0)),
                   
                    ),
              
                  ),
                  Container(
                    height: 50,
                    width: 50,

                    // margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.5),
                    ),
                    child: const ClipOval(
                      child: Image(
                        image: AssetImage('images/darthVader.jpeg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),
          
        ),
      ),
    );
  }
}
