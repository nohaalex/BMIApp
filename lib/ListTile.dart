import 'package:flutter/material.dart';

class ListTileApp extends StatelessWidget {
  const ListTileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ListTile',
      home: ListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class ListPage extends StatefulWidget {
  const ListPage({super.key});

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
        title: const Text('List tile example'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue[50],

              child: ListTile(
                leading: const Icon(Icons.add),
                title: const Text(
                  'List Item 1',
                  textScaler: TextScaler.linear(1.5),
                ),
                trailing: const Icon(Icons.done),
                subtitle: const Text('This is subtitle'),
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
            textScaler: const TextScaler.linear(2),
          )
        ],
      ),
    );
  }
}
