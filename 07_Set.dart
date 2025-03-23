void main(List<String> args) {
  //bir elemandan 1 tane olur
  Set<int> tekSayi = Set();
  tekSayi.add(5);
  tekSayi.add(7);
  tekSayi.add(9);

  var ciftSayi = <int>{};
  ciftSayi.add(4);
  ciftSayi.add(8);
  ciftSayi.add(8);
  print(ciftSayi);

  var sayilar = <int>{};
  sayilar.addAll(ciftSayi);
  sayilar.addAll(tekSayi);
  print(sayilar);

  sayilar.clear();
  sayilar = <int>{
    ...tekSayi,
    ...ciftSayi,
    ...[11, 12, 13]
  };
  print(sayilar);

  var numaralar = Set.from([55, 54, 54, 55, 36, 39, 45]);
  print(numaralar);
}
