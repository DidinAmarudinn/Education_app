import 'package:education_app/helper/sharedprefernece.dart';
import 'package:flutter/material.dart';

class GreetingWidgets extends StatefulWidget {
  @override
  _GreetingWidgetsState createState() => _GreetingWidgetsState();
}

class _GreetingWidgetsState extends State<GreetingWidgets> {
  String name;
  void getName() async {
    SharedPref sharedPref = SharedPref();
    await sharedPref.getName().then((value) => name = value);
    setState(() {});
    print(name);
  }

  @override
  void initState() {
    super.initState();
    getName();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
              IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  onPressed: null)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Hello,",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12,
                ),
                name == null
                    ? Text("noname")
                    : Text(
                        name.toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
