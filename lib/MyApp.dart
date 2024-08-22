import 'package:flutter/material.dart';

int _curr = 0;
int pageNo = 0;

class MyAppp extends StatelessWidget {
  const MyAppp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'PageView dynamic',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {


  PageController controller = PageController();

  final List<Widget> _pages = <Widget>[
    const Center(
        child: Pages(
          text: "Existing Page",
        )
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: const Center(child: Text("PageBuilder")),
          backgroundColor: Colors.lightBlue,
          actions: <Widget>[
            Padding(
              padding:  const EdgeInsets.all(3.0),
              child: Text(
                "Page: ${_curr + 1}/${_pages.length}",

              ),
            )
          ],
        ),
        body: PageView(
          scrollDirection: Axis.horizontal,
          reverse: false,
          physics: const BouncingScrollPhysics(),
          controller: controller,
          onPageChanged: (num) {
            setState(() {
              _curr = num;
            });
          },
          children: _pages,
        ),
        floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _pages.add(
                        const Center(
                            child: Text("Added Page",
                                style: TextStyle(fontSize: 35.0))),
                      );
                    });
                    if (_curr != _pages.length - 1) {
                      controller.jumpToPage(_curr + 1);
                    } else {
                      controller.jumpToPage(0);
                    }

                  },
                  child: const Icon(Icons.add)),
              FloatingActionButton(
                  onPressed: () {
                    _pages.removeAt(_curr);
                    setState(() {
                      controller.jumpToPage(_curr - 1);
                    });
                  },
                  child: const Icon(Icons.delete)),
            ]));
  }
}
class Pages extends StatelessWidget {
  final text;
  const Pages({super.key, this.text});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ]),
    );
  }
}