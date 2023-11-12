import 'package:flutter/material.dart';
import 'package:manbudget/pages/admin_home.dart';
import 'package:manbudget/var_global.dart';

class AddData extends StatefulWidget {
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  bool showpreview = false;
  TextEditingController id = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController overtime = TextEditingController();
  String? valtypestaf = 'Permanent Staff';
  List typestaf = ["Permanent Staff", "Non Permanent Staff"];

  String? valstatus = "Menikah";
  List status = ["Menikah", "Belum Menikah"];

  String? valinsentive = "Staff (Rp 1.000.000)";
  List insentive = [
    "Staff (Rp 1.000.000)",
    "Supervisor (Rp 3.000.000)",
    'Manager (Rp 4.500.000)',
    'Head of Departement (Rp 10.000.000)',
    'Director (Rp 25.000.000)'
  ];

//=============

  int? value_type_staff;
  int? value_status;
  int? value_insentive;
  int? value_overtime = 0;
  double? tax = 0;
  int? netSalary = 0;

  int? tunjanganStatus = 0;
  int? baseSalary = 0;

  int? grossSalary = 0;

  addData() {
    VarGlobal.data.add({
      'id': id.text,
      'nama': nama.text,
      'type_staf': valtypestaf,
      'status': valstatus,
      'base_salary': baseSalary.toString(),
      'overtime': overtime.text,
      'insentif_position': valinsentive,
      'net_salary': netSalary.toString(),
      'gross_salary': grossSalary.toString(),
      'bonus': value_overtime
    });
  }

  _calculate() {
    if (valstatus == 'Menikah') {
      tunjanganStatus = 1000000;
    } else {
      tunjanganStatus = 0;
    }

    if (valtypestaf == 'Permanent Staff') {
      baseSalary = 5500000;
    } else {
      baseSalary = 4500000;
    }

    if (valstatus == 'Menikah') {
      value_status = 1000000;
    } else {
      value_status = 0;
    }

    if (valinsentive == "Staff (Rp 1.000.000)") {
      value_insentive = 1000000;
    } else if (valinsentive == "Supervisor (Rp 3.000.000)") {
      value_insentive = 3000000;
    } else if (valinsentive == 'Manager (Rp 4.500.000)') {
      value_insentive = 4500000;
    } else if (valinsentive == 'Head of Departement (Rp 10.000.000)') {
      value_insentive = 10000000;
    } else if (valinsentive == 'Director (Rp 25.000.000)') {
      value_insentive = 25000000;
    }

    value_overtime = int.parse(overtime.text) * 100000;

    grossSalary = baseSalary! + value_status! + value_insentive!;

    tax = grossSalary! * 0.135;

    netSalary = grossSalary! + tax!.toInt();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Data'),
        leading: SizedBox(),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(30),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ID',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: id,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nama',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: nama,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Overtime',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: overtime,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Type Staf',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 65,
                  width: double.maxFinite,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: DropdownButton(
                    hint: Text("Select Type Staf"),
                    underline: SizedBox(),
                    isExpanded: true,
                    value: valtypestaf,
                    items: typestaf.map((value) {
                      return DropdownMenuItem(
                        child: Text(value),
                        value: value,
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        valtypestaf = value as String?;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Status',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 65,
                  width: double.maxFinite,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: DropdownButton(
                    hint: Text("Select Status"),
                    underline: SizedBox(),
                    isExpanded: true,
                    value: valstatus,
                    items: status.map((value) {
                      return DropdownMenuItem(
                        child: Text(value),
                        value: value,
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        valstatus = value as String?;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Insentive Position',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 65,
                  width: double.maxFinite,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: DropdownButton(
                    hint: Text("Select Insentive Position"),
                    underline: SizedBox(),
                    isExpanded: true,
                    value: valinsentive ?? '',
                    items: insentive.map((value) {
                      return DropdownMenuItem(
                        child: Text(value),
                        value: value,
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        valinsentive = value as String?;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (id.text == '' ||
                        nama.text == '' ||
                        overtime.text == '') {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Isi data dengan lengkap!'),
                        backgroundColor: Colors.orange,
                      ));
                    } else {
                      _calculate();
                    }

                    showpreview = !showpreview;
                  });
                },
                child: Text('Preview')),
            SizedBox(
              height: 40,
            ),
            showpreview ? _preview() : SizedBox()
          ],
        ),
      ),
    );
  }

  Widget _preview() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.purple.shade50),
          child: Table(
            children: [
              TableRow(children: [
                Text('Tunjangan Status'),
                Text(tunjanganStatus!.toString()),
              ]),
              TableRow(children: [
                Text('Base Salary'),
                Text(baseSalary!.toString()),
              ]),
              TableRow(children: [
                Text('Bonus'),
                Text(value_overtime!.toString()),
              ]),
              TableRow(children: [
                Text('Gross Salary'),
                Text(grossSalary!.toString()),
              ]),
              TableRow(children: [
                Text('Tax'),
                Text(tax!.toString()),
              ]),
              TableRow(children: [
                Text('Net Salary'),
                Text(netSalary!.toString()),
              ]),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              addData();
            });

            print(VarGlobal.data);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Berhasil Input data'),
              backgroundColor: Colors.purpleAccent,
            ));
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => AdminHome(),
                ));
          },
          child: Text(
            'Submit',
            style: TextStyle(fontSize: 17),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple.shade300,
              fixedSize: Size(120, 50), // specify width, height
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                15,
              ))),
        )
      ],
    );
  }
}
