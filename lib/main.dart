import 'package:education_app/helper/sharedprefernece.dart';
import 'package:education_app/screens/dashboard.dart';
import 'package:education_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  SharedPref sharedPref = SharedPref();
  bool login = false;
  void getIsLogin() async {
    await sharedPref.getOn().then((value) {
      setState(() {
        login = value;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getIsLogin();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(3, 9, 23, 1),
      ),
      home: login == false ? SplashScreen() : DashboardPage(),
    );
  }
}
