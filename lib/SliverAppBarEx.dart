import 'package:flutter/material.dart';


class SliverAppBarEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              collapsedHeight:30.0,
              toolbarHeight: 30.0,
              expandedHeight: 100.0,

              pinned: true,
              backgroundColor: Colors.brown,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('SliverAppBar'),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(

                    (BuildContext context, int index) {
                  return Expanded(
                    child: Container(
                        height: 50,
                        width: 500,
                        color: Colors.black,
                        child: Column(
                          children: [
                            Text('Container Number: ${index+1} ',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white
                            ),
                            ),

                          ],
                        ),

                    ),
                  );
                },
                childCount: 50,
              ),

            ),
          ],
        ),
      ),
    );
  }
}
