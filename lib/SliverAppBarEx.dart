import 'package:flutter/material.dart';


class SliverAppBarEx extends StatelessWidget {
  const SliverAppBarEx({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget> [
            const SliverAppBar(
              collapsedHeight:30.0,
              toolbarHeight: 30.0,
              expandedHeight: 100.0,

              pinned: true,
              backgroundColor: Colors.brown,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('SliverAppBar',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
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
                            style: const TextStyle(
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
