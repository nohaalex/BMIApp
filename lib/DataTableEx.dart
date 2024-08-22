import 'package:flutter/material.dart';

class DatatableEx extends StatefulWidget {
  const DatatableEx({super.key});

  @override
  State<DatatableEx> createState() => _DatatableExState();
}

class _DatatableExState extends State<DatatableEx> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text('DataTable',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.red,

          ),
          ),
        ),
        // backgroundColor: Colors.grey,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: SingleChildScrollView(
                  child: DataTable(

                    columns: const [
                      DataColumn(label: Text('Movie',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                      ),
                      )
                      ),
                      DataColumn(label: Text('Director',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                      ),)),
                  
                    ],
                    rows: const [
                      DataRow(
                        selected: true,
                          cells: [
                        DataCell(Text('Alien:Covenant')),
                        DataCell(Text('Ridley Scott'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('American Psycho')),
                        DataCell(Text('Mary Harron'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Armageddon')),
                        DataCell(Text('Michael Bay'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Arachnophobia')),
                        DataCell(Text('Frank Marshall'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Barry Lyndon')),
                        DataCell(Text('Stanley Kubrick'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Blade Runner')),
                        DataCell(Text('Ridley Scott'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('The Shinning')),
                        DataCell(Text('Stanley Kubrick'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('The Killing')),
                        DataCell(Text('Stanley Kubrick'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Eyes Wide Shut')),
                        DataCell(Text('Stanley Kubrick'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('2001:A Space Odyssey')),
                        DataCell(Text('Stanley Kubrick'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Solaris')),
                        DataCell(Text('Andrei Tarkovsky'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Ivan\'s Childhood')),
                        DataCell(Text('Andrei Tarkovsky'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Incendies')),
                        DataCell(Text('Denis Villeneuve'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Incendies')),
                        DataCell(Text('Denis Villeneuve'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Bird Box')),
                        DataCell(Text('Susanne Bier'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Shaun of the Dead')),
                        DataCell(Text('Edgar Wright'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Annihilation')),
                        DataCell(Text('Alex Garland'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Ex Machina')),
                        DataCell(Text('Alex Garland'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Call Me by Your Name')),
                        DataCell(Text('Luca Guadagnino'))
                      ]),
                  
                  
                  
                  
                  
                    ],
                  ),
                ),
              ),
              CheckboxListTile(
                title: const Text('CHECK BOX TILE'),
                value: isChecked,
                  onChanged: (newValue){
                setState(() {
                  isChecked=newValue!;
                },
                );
              },
              activeColor: Colors.red,
              checkColor: Colors.white,
              tileColor: Colors.black12,
              subtitle: const Text('Check Box Tile'),
              controlAffinity: ListTileControlAffinity.leading,
            ),

            ],
          ),
        ),
      ),
    );
  }
}
