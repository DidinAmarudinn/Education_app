import 'dart:convert';

import 'package:education_app/model/latihan_model.dart';
import 'package:education_app/model/menu_models.dart';
import 'package:education_app/screens/detail_latihan.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CategoryLatihan extends StatefulWidget {
  final MenuModel menuModel;
  CategoryLatihan(this.menuModel);

  @override
  _CategoryLatihanState createState() => _CategoryLatihanState();
}

class _CategoryLatihanState extends State<CategoryLatihan> {
  LatihanModel latihanModel;
  var url = "https://karangtarunacln.000webhostapp.com/get_pdf.php";
  Future<void> getData() async {
    var res = await http.get(url);
    var decodeJson = jsonDecode(res.body);
    latihanModel = LatihanModel.fromJson(decodeJson);
    setState(() {});
    print(latihanModel.pdf[0].judul);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    widget.menuModel.name,
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
                      widget.menuModel.img,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                widget.menuModel.longDesk,
                style: TextStyle(
                    height: 1.5,
                    color: Colors.white.withOpacity(.8),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Latihan",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 12,
              ),
              latihanModel == null
                  ? Expanded(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : Expanded(
                      child: latihanModel.status
                          ? ListView.builder(
                              itemCount: latihanModel.pdf.length,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            DetailLatihan(
                                                "https://karangtarunacln.000webhostapp.com/pdf/" +
                                                    latihanModel
                                                        .pdf[index].link,
                                                latihanModel
                                                    .pdf[index].kategori),
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
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                              latihanModel.pdf[index].judul,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                              height: 20,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                color: Color(int.parse(
                                                    latihanModel
                                                        .pdf[index].colors)),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(5),
                                                  topRight: Radius.circular(5),
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  latihanModel
                                                      .pdf[index].kategori,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            )
                          : Center(
                              child: Text(
                                "internal server error",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                    ),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => DetailLatihan(
                          "https://karangtarunacln.000webhostapp.com/pdf/" +
                              latihanModel.pdf[0].link,
                          latihanModel.pdf[0].kategori),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: widget.menuModel.colors[0],
                    ),
                    child: Center(
                      child: Text(
                        "Buka Latihan Terbaru",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
