// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// class TabBarStudy extends StatefulWidget {
//   const TabBarStudy({super.key});
//
//   @override
//   State<TabBarStudy> createState() => _TabBarStudyState();
// }
//
// class _TabBarStudyState extends State<TabBarStudy> {
//   int Index=0;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SafeArea(
//         child: DefaultTabController(
//           length: 3,
//           child: Scaffold(
//             appBar: AppBar(
//               bottom: TabBar(
//                 indicatorColor: Colors.yellow,
//                 dividerColor: Colors.blue,
//                 unselectedLabelColor: Colors.white,
//                 tabs: [
//                   Tab(
//                     icon: Icon(Icons.add_a_photo),
//                   ),
//                   Tab(
//                       icon:Icon(Icons.abc_outlined)
//                   ),
//                   Tab(
//                     icon: Icon(Icons.add_box_outlined),
//                   )
//                 ],
//               ),
//               title: Text('Tab Bars',style: TextStyle(
//                 fontSize: 30,
//                 color: Colors.white,
//
//               ),
//               ),
//               backgroundColor: Colors.black38,
//             ),
//             body:TabBarView(
//
//               children: [
//                 Container(child: Text('Home',textAlign: TextAlign.center,style: TextStyle(
//                     fontSize: 50,fontWeight: FontWeight.bold
//                 ),)),
//                 Container(child: Text('About',textAlign: TextAlign.center,style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 50
//                 ),)),
//                 SingleChildScrollView(
//                   child: Column(children: [
//
//                     Container(
//                       height: 100,
//                       width: 200,
//                       color:Colors.red,
//                     ),
//                     Container(
//                       height: 100,
//                       width: 200,
//                       color:Colors.blue,
//                     ),
//                     Container(
//                       height: 100,
//                       width: 200,
//                       color:Colors.orange,
//                     ),
//                     Container(
//                       height: 100,
//                       width: 200,
//                       color:Colors.deepOrange,
//                     ),
//                     Container(
//                       height: 100,
//                       width: 200,
//                       color:Colors.cyan,
//                     ),
//                     Container(
//                       height: 100,
//                       width: 200,
//                       color:Colors.blueAccent,
//                     ),
//                     Container(
//                       height: 100,
//                       width: 200,
//                       color:Colors.black,
//                     ),
//                     Container(
//                       height: 100,
//                       width: 200,
//                       color:Colors.green,
//                     )
//
//                   ],
//                   ),
//                 ),
//
//               ],
//             ),
//
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class TabBarStudy extends StatefulWidget {
  const TabBarStudy({super.key});

  @override
  State<TabBarStudy> createState() => _TabBarStudyState();
}

class _TabBarStudyState extends State<TabBarStudy> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            body: Column(
              children: [
                Container(
                  color: Colors.black38, // Color for TabBar background
                  child: const TabBar(
                    indicatorColor: Colors.yellow,
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: Colors.yellow,
                    unselectedLabelColor: Colors.white,

                    tabs: [
                      Tab(
                          icon: Icon(Icons.account_box_outlined)
                      ),
                      Tab(
                          icon: Icon(Icons.abc_outlined)
                      ),
                      Tab(
                          icon: Icon(Icons.add_box_outlined)
                      ),
                    ],
                  ),

                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Container(
                        child: const Center(
                          child: Text(
                            'Home',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      Container(
                        child: const Center(
                          child: Text(
                            'About',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              height: 400,
                              width: 200,
                              color: Colors.red,
                            ),
                            Container(
                              height: 400,
                              width: 200,
                              color: Colors.blue,
                            ),
                            Container(
                              height: 400,
                              width: 200,
                              color: Colors.orange,
                            ),
                            Container(
                              height: 400,
                              width: 200,
                              color: Colors.deepOrange,
                            ),
                            Container(
                              height: 400,
                              width: 200,
                              color: Colors.cyan,
                            ),
                            Container(
                              height: 400,
                              width: 200,
                              color: Colors.blueAccent,
                            ),
                            Container(
                              height: 400,
                              width: 200,
                              color: Colors.black,
                            ),
                            Container(
                              height: 400,
                              width: 200,
                              color: Colors.green,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

