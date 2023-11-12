import 'package:flutter/material.dart';
import 'package:manbudget/pages/admin_home.dart';
import 'package:manbudget/pages/user_home.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.maxFinite,
      width: double.maxFinite,
      padding: EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Login',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: username,
            decoration: InputDecoration(
                labelText: 'Username', border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: password,
            decoration: InputDecoration(
                labelText: 'Password', border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                if (username.text == 'Admin') {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdminHome(),
                      ));
                } else {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserHome(),
                      ));
                }
              },
              child: Text('Submit'))
        ],
      ),
    ));
  }
}
