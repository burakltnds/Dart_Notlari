void main(List<String> args) {
  var m1 = Matematik(5, 15);
  m1.topla();

  print(Matematik.pi);
}

class Matematik {
  int num1 = 0;
  int num2 = 0;
  static double pi = 3.14;
  //program kapanınca bellekten silinir(sınıf adıyla erişilebilir)
  Matematik(int num1, int num2) {
    this.num1 = num1;
    this.num2 = num2;
  }

  void topla() {
    print("Toplam:${num1 + num2}");
  }

  void cikar() {
    print("Fark:${num1 - num2}");
  }

  void carp() {
    print("Toplam:${num1 * num2}");
  }

  void bol() {
    print("Toplam:${num1 / num2}");
  }
}
