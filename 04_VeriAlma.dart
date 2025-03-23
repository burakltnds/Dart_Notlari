import "dart:io";

void main(List<String> args) {
  print("adını gir");
  var ad = stdin.readLineSync(); //string cevirir
  print("Yaşını Gir");
  var yas = int.parse(stdin.readLineSync()!);

  print("isim: $ad\nyaş: $yas");
}
