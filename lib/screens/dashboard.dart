import 'package:education_app/widgets/greeting_widgets.dart';
import 'package:education_app/widgets/menu_widgets.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            GreetingWidgets(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: MenuWidgets(),
            ),
          ],
        ),
      ),
    );
  }
}
