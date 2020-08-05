import 'package:education_app/data/excel_data.dart';
import 'package:education_app/data/pp_data.dart';
import 'package:education_app/data/word_data.dart';
import 'package:education_app/model/menu_models.dart';
import 'package:flutter/material.dart';

class MenuData {
  List<MenuModel> listMenu = [
    MenuModel(
        id: 0,
        name: "Microsoft Word",
        list: WordData().getDataWord(),
        img: "images/word.png",
        desk: "Kumpulan materi microsoft word",
        longDesk:
            "Microsoft Word atau Microsoft Office Word atau Word adalah perangkat lunak pengolah kata andalan Microsoft. Pertama diterbitkan pada 1983 dengan nama Multi-Tool Word untuk Xenix, versi-versi lain kemudian dikembangkan untuk berbagai sistem operasi, misalnya DOS, Apple Macintosh, SCO UNIX, OS/2, dan Microsoft Windows",
        colors: [Colors.blueAccent, Colors.blue]),
    MenuModel(
        id: 1,
        name: "Microsoft Excel",
        img: "images/excel.png",
        list: ExcelData().getExcelData(),
        desk: "Kumpulan materi microsoft excel",
        longDesk:
            "Microsoft Excel atau Microsoft Office Excel adalah sebuah program aplikasi lembar kerja yang dibuat dan didistribusikan oleh Microsoft Corporation yang dapat dijalankan pada Microsoft Windows dan Mac OS. Aplikasi ini merupakan bagian dari Microsoft Office System",
        colors: [Color(0xff42E695), Color(0xff3BB2B8)]),
    MenuModel(
        id: 2,
        name: "Microsoft PowerPoint",
        img: "images/powerpoint.png",
        list: PpData().getPpData(),
        longDesk:
            "Microsoft Powerpoint adalah sebuah program aplikasi microsoft office yang berguna sebagai media presentasi dengan menggunakan beberapa slide. Aplikasi ini sangat digemari dan banyak digunakan dari berbagai kalangan, baik itu pelajar, perkantoran dan bisnis, pendidik, dan trainer",
        desk: "Kumpulan materi microsoft powerpoint",
        colors: [Colors.pink, Colors.red]),
    MenuModel(
        name: "Latihan Tiap Minggu",
        img: "images/tasks.png",
        id: 3,
        longDesk:
            "Laatihan ini akan di update setiap minggu,mulai dari penggunaan word, excel, dan power point, tujuan dari latihan ini agar pengguna dapat mengimplementasikan hasil belajar",
        desk: "Latihan mandiri untuk setiap program office, update tiap minggu",
        colors: [Color(0xffD76EF5), Color(0xff8F7AFE)]),
  ];
}
