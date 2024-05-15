import 'package:flutter/material.dart';

class ListTileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListTile',
      home: ListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}
class _ListPageState extends State<ListPage> {
  String txt = '';
  bool x=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List tile example'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue[50],
              child: ListTile(
                leading: Icon(Icons.add),
                title: Text(
                  'List Item 1',
                  textScaler: TextScaler.linear(1.5),
                ),
                trailing: Icon(Icons.done),
                subtitle: Text('This is subtitle'),
                selected: x,
                onTap: () {
                  setState(() {
                    if(txt=='') {
                      txt = 'List Tile pressed';
                      x=true;
                    }
                    else {
                      txt = '';
                      x=false;
                    }
                  });
                },
              ),
            ),
          ),
          Text(
            txt,
            textScaler: TextScaler.linear(2),
          )
        ],
      ),
    );
  }
}
