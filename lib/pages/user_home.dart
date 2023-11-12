import 'package:flutter/material.dart';
import 'package:manbudget/pages/user_detail.dart';
import 'package:manbudget/var_global.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slip Gaji'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 20),
        itemCount: VarGlobal.data.length,
        itemBuilder: (context, index) => Stack(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UserDetail(
                            // id: VarGlobal.data[index]['id'] ?? 'error',
                            // nama: VarGlobal.data[index]['nama'] ?? 'error',
                            // type_staf:
                            //     VarGlobal.data[index]['type_staf'] ?? 'error',
                            // status: VarGlobal.data[index]['status'] ?? 'error',
                            // base_salary:
                            //     VarGlobal.data[index]['base_salary'] ?? 'error',
                            // overtime:
                            //     VarGlobal.data[index]['overtime'] ?? 'error',
                            // insentif_position: VarGlobal.data[index]
                            //         ['insentif_position'] ??
                            //     'error',
                            // net_salary:
                            //     VarGlobal.data[index]['net_salary'] ?? 'error',
                            // gross_salary: VarGlobal.data[index]
                            //         ['gross_salary'] ??
                            //     'error',
                            //bonus: VarGlobal.data[index]['bonus'] ?? 'error'
                            )));
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                height: 130,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.purple.shade100),
                child: Table(
                    // Allows to add a border decoration around your table
                    children: [
                      TableRow(children: [
                        Text(
                          'ID',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(VarGlobal.data[index]['id'],
                            style: TextStyle(fontSize: 18)),
                      ]),
                      TableRow(children: [
                        Text('Nama', style: TextStyle(fontSize: 18)),
                        Text(VarGlobal.data[index]['nama'],
                            style: TextStyle(fontSize: 18)),
                      ]),
                      TableRow(children: [
                        Text('Net salary', style: TextStyle(fontSize: 18)),
                        Text(VarGlobal.data[index]['net_salary'],
                            style: TextStyle(fontSize: 18)),
                      ]),
                    ]),
              ),
            ),
            Positioned(
                right: 40,
                bottom: 70,
                child: Icon(
                  Icons.arrow_forward,
                  size: 30,
                ))
          ],
        ),
      ),
    );
  }
}
