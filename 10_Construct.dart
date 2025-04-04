void main(List<String> args) {
  var ford = Araba("Focus", 2018);
  ford.bilgiler();
  var peugeout = Araba("Rifter", 2024);
  peugeout.bilgiler();
  var fiat = Araba.yilsiz("Egea");
  fiat.bilgiler();
}

class Araba {
  int yil = 0;
  String model = " ";

  Araba(String model, int yil) {
    this.model = model;
    this.yil = yil;
  }

// isimli kurucu metod
  Araba.yilsiz(String model) {
    this.model = model;
  }

  void bilgiler() {
    print("Arabanın yılı $yil arabanın modeli $model");
  }
}
