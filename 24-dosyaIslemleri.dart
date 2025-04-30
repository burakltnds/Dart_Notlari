import 'dart:io';

void main(List<String> args) async {
  File dosya = File("data.txt");
  await dosyaYaz(dosya);
  dosyadanOku(dosya);
}

Future<void> dosyaYaz(File dosya) async {
  await dosya.writeAsString("burak altundaş\n", mode: FileMode.append);
  await dosya.writeAsString("burak altundaş1\n", mode: FileMode.append);
  await dosya.writeAsString("burak altundaş2\n", mode: FileMode.append);
  await dosya.writeAsString("burak altundaş3\n", mode: FileMode.append);
}

void dosyadanOku(File dosya) async {
  var content = await dosya.readAsLines();
  content.forEach((satir) {
    print(satir);
  });
}
