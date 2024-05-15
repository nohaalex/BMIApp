import 'package:flutter/material.dart';

class PageViewApp extends StatelessWidget {
  static const String _title = 'PageView App';
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: PageViewHome(),
    );
  }
}
class PageViewHome extends StatelessWidget {
  const PageViewHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('PageView Widget')),
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,

        children: <Widget>[
          Container(
            color: Colors.tealAccent,
            child:  Text(
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
            child:  Text(
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
            child:  Text(
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