import 'package:education_app/data/word_data.dart';
import 'package:education_app/model/data_model.dart';
import 'package:flutter/material.dart';

class MenuModel {
  String name;
  String img;
  String desk;
  String longDesk;
  int id;
  List<DataModel> list;
  List<Color> colors;

  MenuModel(
      {this.name,
      this.img,
      this.desk,
      this.colors,
      this.id,
      this.longDesk,
      this.list});
}
