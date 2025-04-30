void main(List<String> args) async {
  print("kisi listesini getir");
  kisiler1();
  //print(kisiler1);

  print("diğer işlemler yapılıyor");
  print("işlem bitti");
}

void kisiler1() async {
  try {
    var kisiList = await kisiler();
    print(kisiList);
    print(kisiList.length);
  } catch (e) {
    print(e);
  }
}

Future<List<String>> kisiler() {
  return Future.delayed(Duration(seconds: 5), () {
    return ["burak", "zeynep"];
    throw Exception("kişiler getirilemedi");
  });
}
