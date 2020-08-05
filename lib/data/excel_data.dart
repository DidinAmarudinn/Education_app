import 'package:education_app/model/data_model.dart';

class ExcelData {
  List<DataModel> _list = [
    DataModel(no: "1", judul: "Pengenalan Microsoft Excel"),
    DataModel(no: "2", judul: "Fungsi Microsoft Excel"),
    DataModel(no: "3", judul: "Kelebihan dan Kekurangan Microsoft Excel"),
    DataModel(no: "4", judul: "Istilah-istilah dalam Excel"),
    DataModel(no: "5", judul: "Penggunaan Rumus dan Fungsi"),
  ];
  List getExcelData() {
    return _list;
  }
}
