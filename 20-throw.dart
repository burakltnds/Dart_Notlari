import 'dart:math';

void main(List<String> args) {
  try {
    var sonuc = karekok(-25);
    print(sonuc);
  } on FormatException catch (e) {
    print(e.message);
    print(e);
  } catch (e) {
    print("Belirlenemeyen hata");
  }
}

double karekok(int sayi) {
  try {
    if (sayi < 0) {
      throw FormatException("Negatif Olamaz");
    } else {
      return sqrt(sayi);
    }
  } catch (e) {
    print("Hata metoddan yakalandı");
    rethrow;
  }
}
