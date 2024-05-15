import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Flutter Card Example')),
          backgroundColor: Colors.pinkAccent,
        ),
        backgroundColor: Colors.tealAccent,
        body: CardShapes(),
      ),
    );
  }
}
class CardShapes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children:[
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.pinkAccent,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(20.0),

              ),
              color: Colors.blue,
              child: Container(
                
                padding: EdgeInsets.all(16),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blueAccent,
                ),

                child: Text(
                  'RoundedRectangleBorder',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              color: Colors.yellow,
              child: Container(
                height: 200,
                width: 200,
                child: Text('Beveled Rectangle Border',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),),
              ),
            ),
            Card(
              shape: StadiumBorder(
                side: BorderSide(
                  color: Colors.pinkAccent,
                  width: 2.0,
                ),
              ),
              color: Colors.red,
              
              child: Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  'StadiumBorder',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ));
  }
}

