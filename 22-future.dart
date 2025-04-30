import 'dart:io';

void main(List<String> args) {
  print("Anne Cocugu Ekmeğe Yollasın");
  Future<String> sonuc = (ekmekAl());
  sonuc.then((String value) {
    print(value);
  }).catchError((hata) {
    print(hata);
  }).whenComplete(() {
    print("işlem tamamlandı");
  });
  print("Peynir zeytin koy");
  print("kahvaltı hazır");
}

Future<String> ekmekAl() {
  print("Ekmek Almaya Gidiyor");
  //sleep(Duration(seconds: 10));
  var myFuture = Future.delayed(Duration(seconds: 5), () {
    return "cocuk ekmekle eve girdi";
    // throw Exception("bakkalda ekmek kalmamış");
  });
  return myFuture;
}
