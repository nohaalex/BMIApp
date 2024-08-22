import 'package:flutter/material.dart';


class MQApp extends StatelessWidget {
  const MQApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Media Query Example'),
        ),
        body: Center(
          child: Container(
            color: MediaQuery.of(context).size.width > 200 ? Colors.blue : Colors.red,
            child: const Text(
              'This container will be blue if the screen width is greater than 500, otherwise it will be red.',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
