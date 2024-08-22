import 'package:flutter/material.dart';
import 'package:learn1/HelloWorld.dart';
import 'package:learn1/ScrollViewProject.dart';
import 'package:learn1/ListBuilding.dart';

class BottomNavBars extends StatefulWidget {
  const BottomNavBars({super.key});

  @override
  State<BottomNavBars> createState() => _BottomNavBarsState();
}

class _BottomNavBarsState extends State<BottomNavBars> {

  List<Widget> BottomBars=[
    const HelloWorld(),
    const ScrollViewProject(),
    const ListBuilding()
  ];

  var Index=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.person_pin),
          actions: const [
            Icon(Icons.arrow_right_alt)
          ],
          title: const Text('Navigation'
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        
        body:BottomBars[Index],
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.import_contacts_sharp),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'Your Account')
        ],
          backgroundColor:Colors.green,
          selectedItemColor: Colors.white,
          onTap: (x){
            setState(() {
              Index=x;
            });
          },
          currentIndex:Index,

        ),
      ),
    );
  }
}
