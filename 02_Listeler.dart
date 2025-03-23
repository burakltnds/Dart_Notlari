void main() {
  List<String> urunler = List.filled(5, "1");
  urunler[0] = "Laptop";
  urunler[1] = "Mouse";
  urunler[2] = "Keybord";
  urunler[3] = "Monitor";
  urunler[4] = "Microphone";

  print(urunler);

  //Boyut belirtmeyeceksen
  var urunler2 = [];

  urunler2.add("Anakart");
  urunler2.add("İşlemci");
  urunler2.add("Ekran Kartı");
  urunler2.add("Ses Kartı");
  urunler2.add("Ram");
  urunler2.add("Ssd");
  print(urunler2);
//bu şekildede kullanılır(Growable List)
  var sehirler = ["istanbul", "ankara", "kocaeli"];
  sehirler.add("Ordu");
  print(sehirler);

  print(sehirler.where((s) => s.contains("a"))); //a harfi geçenleri seçer
  print(sehirler.first); //ilk elemanı verir
}
