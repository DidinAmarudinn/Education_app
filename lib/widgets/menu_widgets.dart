import 'package:education_app/data/menu_data.dart';
import 'package:education_app/model/menu_models.dart';
import 'package:education_app/screens/category_latihan.dart';
import 'package:education_app/screens/category_screen.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class MenuWidgets extends StatefulWidget {
  @override
  _MenuWidgetsState createState() => _MenuWidgetsState();
}

class _MenuWidgetsState extends State<MenuWidgets> {
  MenuData listMenuData = MenuData();
  final double _borderRadius = 24;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.7,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        itemCount: listMenuData.listMenu.length,
        itemBuilder: (context, int index) {
          MenuModel menuModel = listMenuData.listMenu[index];
          return GestureDetector(
            onTap: () {
              if (menuModel.id == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        CategoryLatihan(menuModel),
                  ),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ScreenCategory(
                      index: menuModel.id,
                    ),
                  ),
                );
              }
            },
            child: Stack(
              children: <Widget>[
                Container(
                  height: height * 0.15,
                  width: width,
                  margin: EdgeInsets.fromLTRB(40, 4, 12, 10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: menuModel.colors),
                    borderRadius: BorderRadius.circular(_borderRadius),
                    boxShadow: [
                      BoxShadow(
                          color: menuModel.colors[0],
                          blurRadius: 8,
                          offset: Offset(0, 4)),
                    ],
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: CustomPaint(
                          size: Size(100, height * 0.15),
                          painter: CustomCardShapePainter(_borderRadius,
                              menuModel.colors[0], menuModel.colors[1]),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.20, vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              menuModel.name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              menuModel.desk,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 12,
                  top: 20,
                  bottom: 20,
                  child: Image.asset(
                    menuModel.img,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class CustomCardShapePainter extends CustomPainter {
  final double radius;
  final Color startColor;
  final Color endColor;

  CustomCardShapePainter(this.radius, this.startColor, this.endColor);

  @override
  void paint(Canvas canvas, Size size) {
    var radius = 24.0;

    var paint = Paint();
    paint.shader = ui.Gradient.linear(
        Offset(0, 0), Offset(size.width, size.height), [
      HSLColor.fromColor(startColor).withLightness(0.8).toColor(),
      endColor
    ]);

    var path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width - radius, size.height)
      ..quadraticBezierTo(
          size.width, size.height, size.width, size.height - radius)
      ..lineTo(size.width, radius)
      ..quadraticBezierTo(size.width, 0, size.width - radius, 0)
      ..lineTo(size.width - 1.5 * radius, 0)
      ..quadraticBezierTo(-radius, 2 * radius, 0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
