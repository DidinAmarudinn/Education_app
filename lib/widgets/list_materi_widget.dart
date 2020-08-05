import 'package:education_app/data/menu_data.dart';
import 'package:education_app/model/data_model.dart';
import 'package:education_app/screens/detail_course.dart';
import 'package:flutter/material.dart';

class ListMateriWidget extends StatefulWidget {
  final int indexid;
  ListMateriWidget(this.indexid);
  @override
  _ListMateriWidgetState createState() => _ListMateriWidgetState();
}

class _ListMateriWidgetState extends State<ListMateriWidget> {
  MenuData data = MenuData();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Materi",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 12,
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                itemCount: data.listMenu[widget.indexid].list.length,
                itemBuilder: (BuildContext context, int index) {
                  DataModel dataModel =
                      data.listMenu[widget.indexid].list[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => DetailCourse(
                              dataModel,
                              data.listMenu[widget.indexid].colors[0]),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 6, bottom: 6),
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white.withOpacity(.12),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 12),
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.white.withOpacity(.7),
                                width: 2,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                dataModel.no,
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Text(
                              dataModel.judul,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 10,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5)),
                                color: data.listMenu[widget.indexid].colors[1]),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
