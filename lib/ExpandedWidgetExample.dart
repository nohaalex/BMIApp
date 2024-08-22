import 'package:flutter/material.dart';

class ExpandedWidgetExample extends StatefulWidget {
  const ExpandedWidgetExample({super.key});

  @override
  State<ExpandedWidgetExample> createState() => _ExpandedWidgetExampleState();
}

class _ExpandedWidgetExampleState extends State<ExpandedWidgetExample> {

  String InkText='Hi there';
  int count=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'EXPANDED WIDGET EXAMPLE',
            style: TextStyle(
              color: Colors.black
            ),
          ),
        ),
        body: Column(
          children: [
            InkWell(
              onTap:()
              {
                print('CONTAINER TAPPED');

                setState(() {
                  InkText="Hi Adhil";
                  count=1;
                  if(count>1){
                    InkText="Bye";
                  }
                  count++;
                }
                );

                },



              child: Container(
                child: Text('${InkText}',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white
                  ),),
                height: 300,
                width: 300,
                color: Colors.orange,
              ),
            ),
            Container(
            child: Container(
              height: 100,
                width: 100,

                color: Colors.blue,
              ),
          ),

            Expanded(
              child: Container(
                color: Colors.orange,
                height: 100,
                width: 200,
                child: Text(
                  'Third widget',
                  style: TextStyle(

                    color: Colors.white,
                  ),
                ),
              ),

            ),


          ],
        ),
      ),
    );
  }
}
