import 'package:flutter/material.dart';
import 'package:manbudget/pages/admin_home.dart';
import 'package:manbudget/pages/main_navigator_admin.dart';
import 'package:manbudget/pages/main_navigator_user.dart';
import 'package:manbudget/pages/user_home.dart';
import 'package:manbudget/var_global.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.maxFinite,
      width: double.maxFinite,
      padding: EdgeInsets.all(25),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.jpeg',
              height: 150,
            ),
            Text(
              'PT. MULTISTRAN ENGINEERING',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 105, 153)),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Login',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: username,
              decoration: InputDecoration(
                  labelText: 'Email', border: OutlineInputBorder()),
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return 'Data belum diisi';
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: password,
              decoration: InputDecoration(
                  labelText: 'Password', border: OutlineInputBorder()),
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return 'Data belum diisi';
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (username.text == 'farhanalhadad@gmail.com' &&
                        password.text == 'admin') {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainNavigatorAdmin(),
                          ));
                    } else {
                      VarGlobal.USER_NOW = username.text;
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainNavigatorUser(),
                          ));
                    }
                  }
                },
                child: Text('Submit'))
          ],
        ),
      ),
    ));
  }
}
