import 'dart:math';
import "11-1_devam.dart";

void main(List<String> args) {
  var islemler = Uyelik();
  islemler.setKullaniciAdi("burak altundaş");
  print(islemler.getKullaniciAdi());
  islemler.uyesil();
}
