import 'package:flutter/material.dart';

class Layout_builder extends StatelessWidget {
  const Layout_builder({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'LayoutBuilder',
      debugShowCheckedModeBanner: false,
      home: LayoutBuilderApp(),
    );
  }
}
class LayoutBuilderApp extends StatelessWidget {
  const LayoutBuilderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Layout Widget'),
        ),
        body: Container(
          color: Colors.yellowAccent,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: LayoutBuilder(
            builder: (BuildContext ctx, BoxConstraints constraints) {
              return Container(
                color: Colors.blueGrey,
                alignment: Alignment.center,
                height: constraints.maxHeight * 0.25,
                width: constraints.maxWidth * 0.25,
                child: const Text(
                  'LayoutBuilder Widget',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}