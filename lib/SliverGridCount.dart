import 'package:flutter/material.dart';


class SliverGridCountEx extends StatelessWidget {
  const SliverGridCountEx({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sliver example',
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child:SizedBox(
                  height: 100,
                ),
              ),
              SliverGrid.count(
                  crossAxisCount: 6,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1,
                  mainAxisSpacing: 30,
                  children: [
                    Container(
                      color: Colors.red,
                    ),
                    Container(
                      color: Colors.yellow,
                    ),
                    Container(
                      color: Colors.blue,
                    ),
                    Container(
                      color: Colors.green,
                    ),
                    Container(
                      color: Colors.red,
                    ),
                    Container(
                      color: Colors.yellow,
                    ),
                    Container(
                      color: Colors.blue,
                    ),
                    Container(
                      color: Colors.green,
                    )
                  ]),
            ]
        ));
  }
}