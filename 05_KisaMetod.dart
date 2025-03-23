void main(List<String> args) {
  print("4 ün Karesi ${karesi(4)}");
  print("Büyük Sayi ${max(10, 10)}");
}

int karesi(int sayi) => sayi * sayi;

int max(int sayi1, int sayi2) => (sayi1 > sayi2) ? sayi1 : sayi2;
