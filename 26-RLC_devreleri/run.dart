import 'dart:io';
import 'seri.dart';
import 'paralel.dart';

void run() {
  do {
    print("L Değerini Girin");
    double L = double.parse(stdin.readLineSync()!);
    print("C Değerini Girin");
    double C = double.parse(stdin.readLineSync()!);
    print("R Değerini Girin");
    double R = double.parse(stdin.readLineSync()!);
    print("F Değerini Girin");
    double F = double.parse(stdin.readLineSync()!);
    print("V Değerini Girin");
    double V = double.parse(stdin.readLineSync()!);
    print("Devre Paralel mi Seri mi?");
    String sec = stdin.readLineSync()!;
    if (sec == "Seri") {
      var s1 = Seri(L, C, R, F, V);
      s1.seriDevreler();
    } else if (sec == "Paralel") {
      var s1 = Paralel(L, C, R, F, V);
      s1.seriDevreler();
    } else {
      print("Yanlış Bir Seçim Yaptiniz Tekrar Deneyin");
    }
  } while (true);
}
