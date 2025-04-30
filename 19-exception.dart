void main(List<String> args) {
  print("program basladi");
  try {
    int sayi = 100 ~/ 0;
    print(sayi);
  } catch (e) {
    print("Sıfıra bölme hatası");
  }
  print("program bitti");
}
