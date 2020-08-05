class LatihanModel {
  bool status;
  List<Pdf> pdf;

  LatihanModel({this.status, this.pdf});

  LatihanModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['pdf'] != null) {
      pdf = new List<Pdf>();
      json['pdf'].forEach((v) {
        pdf.add(new Pdf.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.pdf != null) {
      data['pdf'] = this.pdf.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pdf {
  String id;
  String judul;
  String kategori;
  String link;
  String colors;

  Pdf({this.id, this.judul, this.kategori, this.link, this.colors});

  Pdf.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    judul = json['judul'];
    kategori = json['kategori'];
    link = json['link'];
    colors = json['colors'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['judul'] = this.judul;
    data['kategori'] = this.kategori;
    data['link'] = this.link;
    data['colors'] = this.colors;
    return data;
  }
}
