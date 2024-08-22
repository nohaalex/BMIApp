import 'package:flutter/material.dart';

class PageViewApp extends StatelessWidget {

  const PageViewApp({super.key});
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,

      home: PageViewHome(),
    );
  }
}


class PageViewHome extends StatelessWidget {
  const PageViewHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Center(
            child: Text(
                'PageView Widget'
            )
        ),
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,

        children: [

          Container(
            color: Colors.tealAccent,
            child:  const Text(
              'Page One',
              style: TextStyle(
                fontFamily: 'Courier',
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            color: Colors.yellow,
            child:  const Text(
              'Page Two',
              style: TextStyle(
                fontFamily: 'Courier',
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            color: Colors.deepOrangeAccent,
            child:  const Text(
              'Page Three',
              style: TextStyle(
                fontFamily: 'Courier',
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

        ],
      ),
    );
  }
}