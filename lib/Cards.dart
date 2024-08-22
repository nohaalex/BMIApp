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
          title: const Center(child: Text('Flutter Card Example')),
          backgroundColor: Colors.pinkAccent,
        ),
        backgroundColor: Colors.tealAccent,
        body: const CardShapes(),
      ),
    );
  }
}

class CardShapes extends StatelessWidget {
  const CardShapes({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children:[


            Card(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.pinkAccent,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(20.0),

              ),
              color: Colors.blue,
              child: Column(
                children: [
                  Container(

                    padding: const EdgeInsets.all(16),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      // color: Colors.red,
                    ),

                    child: const Text(
                      'RoundedRectangleBorder',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),





            Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(
                  color: Colors.blue,
                  width: 5,
                ),
              ),
              color: Colors.yellow,
              child: Container(
                height: 200,
                width: 200,
                // color: Colors.red,
                padding: EdgeInsets.all(40),
                child: Text('Beveled Rectangle Border',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),
                ),
              ),
            ),






            Card(
              shape: const StadiumBorder(
                side: BorderSide(
                  color: Colors.pinkAccent,
                  width: 2.0,
                ),
              ),
              color: Colors.red,
              
              child: Container(
                padding: const EdgeInsets.all(16),
                child: const Text(
                  'StadiumBorder',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),





          ],
        ));
  }
}

