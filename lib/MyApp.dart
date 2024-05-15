import 'package:flutter/material.dart';
int _curr = 0;
int pageNo = 0;

class MyAppp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PageView dynamic',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  PageController controller = PageController();
  List<Widget> _pages = <Widget>[
    new Center(
        child: new Pages(
          text: "Existing Page",
        )
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Center(child: Text("PageBuilder")),
          backgroundColor: Colors.lightBlue,
          actions: <Widget>[
            Padding(
              padding:  EdgeInsets.all(3.0),
              child: Text(
                "Page: " +
                    (_curr + 1).toString() +
                    "/" +
                    _pages.length.toString(),
               textScaleFactor: 2,
              ),
            )
          ],
        ),
        body: PageView(
          children: _pages,
          scrollDirection: Axis.horizontal,
          reverse: false,
          physics: BouncingScrollPhysics(),
          controller: controller,
          onPageChanged: (num) {
            setState(() {
              _curr = num;
            });
          },
        ),
        floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _pages.add(
                        new Center(
                            child: new Text("Added Page",
                                style: new TextStyle(fontSize: 35.0))),
                      );
                    });
                    if (_curr != _pages.length - 1)
                      controller.jumpToPage(_curr + 1);
                    else
                      controller.jumpToPage(0);

                  },
                  child: Icon(Icons.add)),
              FloatingActionButton(
                  onPressed: () {
                    _pages.removeAt(_curr);
                    setState(() {
                      controller.jumpToPage(_curr - 1);
                    });
                  },
                  child: Icon(Icons.delete)),
            ]));
  }
}
class Pages extends StatelessWidget {
  final text;
  Pages({this.text});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ]),
    );
  }
}