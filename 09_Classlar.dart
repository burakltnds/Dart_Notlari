void main(List<String> args) {
  Ogrenci burak = Ogrenci();
  var zs = Ogrenci();
  burak.ogrenciNo = 230905013;
  burak.ad = "Burak Altundaş";
  burak.mezun = false;
}

class Ogrenci {
  int ogrenciNo = 0;
  String ad = " ";
  bool mezun = false;

  void dersCalis() {
    print("ogrenci calısıyor");
  }
}
