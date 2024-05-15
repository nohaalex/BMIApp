import 'package:flutter/material.dart';


class MQApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Media Query Example'),
        ),
        body: Center(
          child: Container(
            color: MediaQuery.of(context).size.width > 600 ? Colors.blue : Colors.red,
            child: Text(
              'This container will be blue if the screen width is greater than 600, otherwise it will be red.',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
