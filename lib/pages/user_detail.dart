import 'package:flutter/material.dart';

class UserDetail extends StatelessWidget {
  final String id,
      nama,
      type_staf,
      status,
      base_salary,
      overtime,
      insentif_position,
      net_salary,
      gross_salary;

  const UserDetail({
    super.key,
    required this.id,
    required this.nama,
    required this.type_staf,
    required this.status,
    required this.base_salary,
    required this.overtime,
    required this.insentif_position,
    required this.net_salary,
    required this.gross_salary,
  });

  @override
  Widget build(BuildContext context) {
    var bonus = int.parse(overtime) * 100000;
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'Slip Gaji Karyawan [$nama]',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Table(
              border: TableBorder.all(
                color: Colors.black,
              ),
              children: [
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      'ID',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(id, style: TextStyle(fontSize: 18)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Nama', style: TextStyle(fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(nama, style: TextStyle(fontSize: 18)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Type Staf', style: TextStyle(fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(type_staf, style: TextStyle(fontSize: 18)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Status', style: TextStyle(fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(status, style: TextStyle(fontSize: 18)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Base Salary', style: TextStyle(fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(base_salary, style: TextStyle(fontSize: 18)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Overtime', style: TextStyle(fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(overtime, style: TextStyle(fontSize: 18)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Insentif Position',
                        style: TextStyle(fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Text(insentif_position, style: TextStyle(fontSize: 18)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Net salary', style: TextStyle(fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(net_salary, style: TextStyle(fontSize: 18)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Gross Salary', style: TextStyle(fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(gross_salary, style: TextStyle(fontSize: 18)),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Bonus', style: TextStyle(fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Text(bonus.toString(), style: TextStyle(fontSize: 18)),
                  ),
                ]),
              ]),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Maaf fitur export masih dikembangkan'),
            backgroundColor: Colors.purple,
          ));
        },
        child: Icon(Icons.picture_as_pdf_rounded),
        backgroundColor: Colors.red,
      ),
    );
  }
}
