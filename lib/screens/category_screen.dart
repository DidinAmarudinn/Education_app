import 'package:education_app/data/menu_data.dart';
import 'package:education_app/widgets/list_materi_widget.dart';
import 'package:flutter/material.dart';

class ScreenCategory extends StatefulWidget {
  final int index;
  ScreenCategory({this.index});
  @override
  _ScreenCategoryState createState() => _ScreenCategoryState();
}

class _ScreenCategoryState extends State<ScreenCategory> {
  MenuData data = MenuData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    data.listMenu[widget.index].name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Image(
                    width: 100,
                    fit: BoxFit.cover,
                    height: 100,
                    image: AssetImage(
                      data.listMenu[widget.index].img,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                data.listMenu[0].longDesk,
                style: TextStyle(
                    height: 1.5,
                    color: Colors.white.withOpacity(.8),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              ListMateriWidget(widget.index),
            ],
          ),
        ),
      ),
    );
  }
}
