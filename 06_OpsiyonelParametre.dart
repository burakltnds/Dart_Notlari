void main(List<String> args) {
  print("Toplam = ${topla(5, 10, 7)}");
  print("Carp = ${carp(sayi2: 5, sayi1: 10)}");
}

int topla(int s1, int s2, [int s3 = 0]) {
  return s1 + s2 + s3;
}

int carp({int sayi1 = 1, int sayi2 = 1}) {
  return sayi1 * sayi2;
}
