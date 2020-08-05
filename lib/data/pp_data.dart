import 'package:education_app/model/data_model.dart';

class PpData {
  List<DataModel> _list = [
    DataModel(no: "1", judul: "Pengenalan PowerPoint"),
    DataModel(no: "2", judul: "Membuat Persentasi Baru"),
    DataModel(no: "3", judul: "Membuat Slide"),
    DataModel(no: "4", judul: "Mengatur Laayout Slide"),
    DataModel(no: "5", judul: "Mengubah Tampilan PowerPoint"),
    DataModel(no: "6", judul: "Mengganti Tampilan"),
    DataModel(no: "7", judul: "Penjelasa Tampilan"),
    DataModel(
        no: "8",
        judul: "Menampilkan dan Menyembunyikan Slide Pane dan Notes Pane"),
    DataModel(
        no: "9", judul: "Mengganti Background dari Sebuah atau Beberapa Slide"),
  ];
  List getPpData() {
    return _list;
  }
}
