import 'package:flutter/material.dart';

class ListBuilding extends StatefulWidget {
  const ListBuilding({super.key});

  @override
  State<ListBuilding> createState() => _ListBuildingState();
}

class _ListBuildingState extends State<ListBuilding> {

  List<Map<String,dynamic>> cars=[
    {'company':'AUDI', 'estd':1910,'imagelink':'https://th.bing.com/th/id/OIP.Ep_VdqaIlzrm9YHxUGaVVwHaEK?w=300&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'  },
    {'company':'BMW', 'estd':1916,'imagelink':'https://th.bing.com/th/id/OIP.Ep_VdqaIlzrm9YHxUGaVVwHaEK?w=300&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'  },
    {'company':'JAGUAR', 'estd':1922,'imagelink':'https://th.bing.com/th/id/OIP.Ep_VdqaIlzrm9YHxUGaVVwHaEK?w=300&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'  },
    {'company':'HM', 'estd':1942,'imagelink':'https://th.bing.com/th/id/OIP.Ep_VdqaIlzrm9YHxUGaVVwHaEK?w=300&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'  },
    {'company':'SUZUKI', 'estd':1909,'imagelink':'https://th.bing.com/th/id/OIP.Ep_VdqaIlzrm9YHxUGaVVwHaEK?w=300&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'  },
    {'company':'TOYOTA', 'estd':1937,'imagelink':'https://th.bing.com/th/id/OIP.Ep_VdqaIlzrm9YHxUGaVVwHaEK?w=300&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'  }

  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: const Text('LIST VIEW BUILDER',
              style: TextStyle(
                fontSize: 30,
                color:Colors.white
              ),
              ),
              backgroundColor: Colors.black38,
              centerTitle: true,
            ),
            body: Column(
              children: [
                Container(
                height: 80,
              ),
                SizedBox(
                  height: 600,

                  child: ListView.builder(
                    itemBuilder: (context,index){
                    return Column(
                      children: [
                        Image(image: NetworkImage('${cars[index]['imagelink']}')),

                        Container(
                            height: 80,
                            width:350,
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.grey
                            ),
                          child: Text(

                            'COMPANY: ${cars[index]['company']} \n  ESTD:${cars[index]['estd']}',
                            style: const TextStyle(
                              fontSize: 25,
                              color:Colors.black
                            ),
                            textAlign: TextAlign.center,
                          ),

                        ),
                      ],
                    );
                  },
                  itemCount: cars.length,
                  ),
                ),
              ],
            ),
          ),

        ),
    );
  }
}
