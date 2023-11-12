import 'package:flutter/material.dart';

class UserDetail extends StatelessWidget {
  // final String id,
  //     nama,
  //     type_staf,
  //     status,
  //     base_salary,
  //     overtime,
  //     insentif_position,
  //     net_salary,
  //     gross_salary,
  //     bonus;

  // const UserDetail(
  //     {super.key,
  //     required this.id,
  //     required this.nama,
  //     required this.type_staf,
  //     required this.status,
  //     required this.base_salary,
  //     required this.overtime,
  //     required this.insentif_position,
  //     required this.net_salary,
  //     required this.gross_salary,
  //     required this.bonus});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Table(
              // Allows to add a border decoration around your table
              children: [
                // TableRow(children: [
                //   Text(
                //     'ID',
                //     style: TextStyle(fontSize: 18),
                //   ),
                //   Text(id, style: TextStyle(fontSize: 18)),
                // ]),
                // TableRow(children: [
                //   Text('Nama', style: TextStyle(fontSize: 18)),
                //   Text(nama, style: TextStyle(fontSize: 18)),
                // ]),
                // TableRow(children: [
                //   Text('Type Staf', style: TextStyle(fontSize: 18)),
                //   Text(type_staf, style: TextStyle(fontSize: 18)),
                // ]),
                // TableRow(children: [
                //   Text('Status', style: TextStyle(fontSize: 18)),
                //   Text(status, style: TextStyle(fontSize: 18)),
                // ]),
                // TableRow(children: [
                //   Text('Base Salary', style: TextStyle(fontSize: 18)),
                //   Text(base_salary, style: TextStyle(fontSize: 18)),
                // ]),
                // TableRow(children: [
                //   Text('Overtime', style: TextStyle(fontSize: 18)),
                //   Text(overtime, style: TextStyle(fontSize: 18)),
                // ]),
                // TableRow(children: [
                //   Text('Insentif Position', style: TextStyle(fontSize: 18)),
                //   Text(insentif_position, style: TextStyle(fontSize: 18)),
                // ]),
                // TableRow(children: [
                //   Text('Net salary', style: TextStyle(fontSize: 18)),
                //   Text(net_salary, style: TextStyle(fontSize: 18)),
                // ]),
                // TableRow(children: [
                //   Text('Gross Salary', style: TextStyle(fontSize: 18)),
                //   Text(gross_salary, style: TextStyle(fontSize: 18)),
                // ]),
                // TableRow(children: [
                //   Text('Bonus', style: TextStyle(fontSize: 18)),
                //   Text(bonus, style: TextStyle(fontSize: 18)),
                // ]),
              ]),
        ],
      )),
    );
  }
}
