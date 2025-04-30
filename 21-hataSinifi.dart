void main(List<String> args) {
  try {
    Ogrenci emre = Ogrenci(-50);
    print(emre.yas);
  } on AgeException catch (e) {
    print(e.mesaj);
  }
}

class AgeException implements Exception {
  String mesaj;
  AgeException({this.mesaj = "Age Exception"});
}

class Ogrenci {
  int yas = 0;
  Ogrenci(int yas) {
    if (yas < 0) {
      throw AgeException();
    }
    this.yas = yas;
  }
}
