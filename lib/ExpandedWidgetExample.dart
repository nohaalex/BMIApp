import 'package:flutter/material.dart';

class ExpandedWidgetExample extends StatefulWidget {
  const ExpandedWidgetExample({super.key});

  @override
  State<ExpandedWidgetExample> createState() => _ExpandedWidgetExampleState();
}

class _ExpandedWidgetExampleState extends State<ExpandedWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'EXPANDED WIDGET EXAMPLE',
            style: TextStyle(
              color: Colors.black
            ),
          ),
        ),
        body: Column(
          children: [
            InkWell(
              onTap:(){print('CONTAINER TAPPED');},
              child: Container(
                height: 100,
                width: 100,
                color: Colors.orange,
              ),
            ),
          Expanded(
            child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
          )


          ],
        ),
      ),
    );
  }
}
