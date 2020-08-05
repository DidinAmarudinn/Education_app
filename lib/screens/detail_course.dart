import 'package:education_app/model/data_model.dart';
import 'package:flutter/material.dart';

class DetailCourse extends StatefulWidget {
  final Color color;
  final DataModel dataModel;
  DetailCourse(this.dataModel, this.color);
  @override
  _DetailCourseState createState() => _DetailCourseState();
}

class _DetailCourseState extends State<DetailCourse> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.12),
        title: Text(widget.dataModel.judul),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        children: <Widget>[
          Column(
            children: <Widget>[
              widget.dataModel.desk1 == null
                  ? SizedBox()
                  : Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      width: width,
                      child: Text(
                        widget.dataModel.desk1,
                        style: TextStyle(color: Colors.white, height: 1.5),
                      ),
                    ),
              widget.dataModel.imgUrl1 == null
                  ? SizedBox()
                  : Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          widget.dataModel.imgUrl1,
                          height: 200,
                          fit: BoxFit.cover,
                          width: width,
                        ),
                      ),
                    ),
              widget.dataModel.desk2 == null
                  ? SizedBox()
                  : Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      width: width,
                      child: Text(widget.dataModel.desk2,
                          style: TextStyle(color: Colors.white, height: 1.5)),
                    ),
              widget.dataModel.imgUrl2 == null
                  ? SizedBox()
                  : Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          widget.dataModel.imgUrl2,
                          height: 200,
                          fit: BoxFit.cover,
                          width: width,
                        ),
                      ),
                    ),
              widget.dataModel.desk3 == null
                  ? SizedBox()
                  : Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      width: width,
                      child: Text(widget.dataModel.desk3,
                          style: TextStyle(color: Colors.white, height: 1.5)),
                    ),
              widget.dataModel.imgUrl3 == null
                  ? SizedBox()
                  : Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          widget.dataModel.imgUrl3,
                          height: 200,
                          fit: BoxFit.cover,
                          width: width,
                        ),
                      ),
                    ),
              widget.dataModel.desk4 == null
                  ? SizedBox()
                  : Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      width: width,
                      child: Text(widget.dataModel.desk4,
                          style: TextStyle(color: Colors.white, height: 1.5)),
                    ),
              widget.dataModel.imgUrl4 == null
                  ? SizedBox()
                  : Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          widget.dataModel.imgUrl4,
                          height: 200,
                          fit: BoxFit.cover,
                          width: width,
                        ),
                      ),
                    ),
              widget.dataModel.desk5 == null
                  ? SizedBox()
                  : Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      width: width,
                      child: Text(widget.dataModel.desk5,
                          style: TextStyle(color: Colors.white, height: 1.5)),
                    ),
              widget.dataModel.imgUrl5 == null
                  ? SizedBox()
                  : Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          widget.dataModel.imgUrl5,
                          height: 200,
                          fit: BoxFit.cover,
                          width: width,
                        ),
                      ),
                    ),
            ],
          )
        ],
      ),
    );
  }
}
