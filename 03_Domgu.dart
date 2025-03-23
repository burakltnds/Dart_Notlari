void main() {
  var products = ["laptop", "monitor", "keyboard"];

  dongum:
  for (var j in products) {
    //fora etiket verdik
    print(j);
  }
  var sayi = 20;

  while (sayi >= 10) {
    print(sayi);
    sayi--;
  }

  do {
    print("Sayı: $sayi");
    sayi--;
  } while (sayi > 15);
  //bir kez çalışması şart
}
