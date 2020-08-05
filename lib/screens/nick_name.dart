import 'package:education_app/animations/fade_animations.dart';
import 'package:education_app/helper/sharedprefernece.dart';
import 'package:education_app/screens/dashboard.dart';
import 'package:flutter/material.dart';

class NickNameScreen extends StatefulWidget {
  @override
  _NickNameScreenState createState() => _NickNameScreenState();
}

class _NickNameScreenState extends State<NickNameScreen> {
  TextEditingController controller = TextEditingController();

  SharedPref sharedPref = SharedPref();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FadeAnimation(
              1.2,
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Nama",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            FadeAnimation(
              1.4,
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "nickname",
                      hintStyle: TextStyle(color: Colors.grey.withOpacity(.8))),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FadeAnimation(
              1.7,
              Center(
                child: GestureDetector(
                  onTap: () async {
                    sharedPref.saveData(controller.text, true);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => DashboardPage(),
                      ),
                    );
                  },
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 120,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.blue[800],
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Text(
                          "Mulai",
                          style: TextStyle(color: Colors.white.withOpacity(.7)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
